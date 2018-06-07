package com.login.model.DAO;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import util.DB;

import com.login.model.DTO.memDTO;

public class memDAO //회원가입 및 검사 DAO
{
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private memDTO member,mem;
	private String sql1,sql2;
    
    // 싱글톤 패턴
   /* private memDAO(){}
    public static memDAO getInstance(){
        if(instance==null)
            instance=new memDAO();
        return instance;
    }*/
    
    // String -> Date로 변경하는 메서드
    // 문자열로된 생년월일을 Date로 변경하기 위해 필요
    // java.util.Date클래스로는 오라클의 Date형식과 연동 불가
    // Oracle의 date형식과 연동되는 java의 Date는 java.sql.Date 클래스
    public Date stringToDate(memDTO member)
    {
        // 날짜가 yyyymmdd 형식으로 입력되었을 경우 Date로 변경하는 메서드
        SimpleDateFormat beforeFormat = new SimpleDateFormat("yyyymmdd");
        
        // Date로 변경하기 위해서는 날짜 형식을 yyyy-mm-dd로 변경해야 한다.
        SimpleDateFormat afterFormat = new SimpleDateFormat("yyyy-mm-dd");
        
        java.util.Date tempDate = null;
        
        try {
            // 현재 yyyymmdd로된 날짜 형식으로 java.util.Date객체를 만든다.
            tempDate = beforeFormat.parse(member.getMemBirth());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
        // java.util.Date를 yyyy-mm-dd 형식으로 변경하여 String로 반환한다.
        String transDate = afterFormat.format(tempDate);
        System.out.println("transDate                "+transDate);
        // 반환된 String 값을 Date로 변경한다.
        Date d = Date.valueOf(transDate);
        
        return d;
    } // end stringToDate()
    
    // 로그인 체크
    // 아이디/비밀번호 체크
    public int loginCheck(String id, String pw) 
    {

    	String dbPW = ""; // db에서 꺼낸 비밀번호를 담을 변수
        int x = -1;
 
        try {
            // 쿼리 - 먼저 입력된 아이디로 DB에서 비밀번호를 조회
            sql1 = "SELECT MEMPW FROM MEMBER WHERE MEMID=?";
 
            conn = DB.getConnction();
            pstmt = conn.prepareStatement(sql1);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
 
            if (rs.next()) // 입력된 아이디에 해당하는 비번 있을경우
            {
                dbPW = rs.getString("memPw"); // 비번을 변수에 넣는다.
 
                if (dbPW.equals(pw)) 
                    x = 1; // 넘겨받은 비번과 꺼내온 비번 비교. 같으면 인증성공
                else                  
                    x = 0; // DB의 비밀번호와 입력받은 비밀번호가 다르면, 인증실패
                
            } else {
                x = -1; // 해당 아이디가 없을 경우
            }
 
            return x;
 
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end loginCheck()
	
    
	
 // 회원 정보
 	public ArrayList<memDTO> getMemList() {
 		ArrayList<memDTO> memberList = new ArrayList<memDTO>();
         
         try {
         	
             sql1 = "SELECT MEMID, MEMPW FROM MEMBER";
             sql2 = "SELECT * FROM PRIVACY";
             
             conn = DB.getConnction();
             pstmt = conn.prepareStatement(sql1.toString());
             rs = pstmt.executeQuery();
             
             while (rs.next()) 
             {
                 member = new memDTO();
                 member.setMemId(rs.getString("memId"));
                 member.setMemPw(rs.getString("memPw"));
                 member.setMemName(rs.getString("memName"));
                 member.setMemGen(rs.getString("memGen"));
                 member.setMemBirth(rs.getDate("memBirth").toString());
                 member.setMemMail(rs.getString("memMail"));
                 member.setMemPnum(Integer.parseInt(rs.getString("memPnum")));
                 
                 memberList.add(member);
             }
             
             return memberList;
             
         } catch (Exception sqle) {
             throw new RuntimeException(sqle.getMessage());
         } finally {
             // Connection, PreparedStatement를 닫는다.
             try{
                 if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                 if ( conn != null ){ conn.close(); conn=null; }
             }catch(Exception e){
                 throw new RuntimeException(e.getMessage());
             }
         }
     } // end getMemList

	// 아이디 중복 검사
	public boolean idChk(String memId) {
		
		boolean x= false;
        
        try {
            // 쿼리
            String sql = "SELECT * FROM MEMBER WHERE MEMID=?";
                        
            conn = DB.getConnction();
            pstmt = conn.prepareStatement(sql.toString());
            pstmt.setString(1, memId);            
            rs = pstmt.executeQuery();
            
            if(rs.next())
            	
            	x= true; //해당 아이디 존재
            
            return x;
            
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null; }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end idChk()
	
	// 회원 정보 입력(회원 가입)
		public void addMem(memDTO member) throws SQLException {
	        String sql1=null;
	        String sql2=null;
	        System.out.println("addMem 실행");
	        try {
	            // 커넥션을 가져온다.
	            conn = DB.getConnction();
	            
	            // 자동 커밋을 false로 한다.
	            conn.setAutoCommit(false);
	            
	            // 쿼리 생성
	            // 작성일의 경우 자동으로 세팅되게 하기 위해 sysdate를 사용
	            sql1 = "INSERT INTO MEMBER VALUES (?, ?, ?, sysdate, '')";
	            // ('abc',1234,'학생',sysdate,'');
	            
	            sql2 = "INSERT INTO PRIVACY VALUES (?, privacy_seq.nextval, '', ?, ?, ?, ?, ?,'없음')";
	            // ('abc',privacy_seq.nextval,1,'학생이름','남',sysdate,'abc@gamil.com',01012345678);
	            Date date=stringToDate(member);

	            // 회원 정보 (아이디, 패스워드)
	            // StringBuffer에 담긴 값을 얻으려면 toString()메서드를 사용해야 함
	            pstmt = conn.prepareStatement(sql1.toString());
	            pstmt.setString(1, member.getMemId());
	            pstmt.setString(2, member.getMemPw());
	            pstmt.setString(3, "학생");
	           
	            // 쿼리 실행
	            pstmt.executeUpdate();
	            // 완료시 커밋
	            conn.commit(); 
	            
	            // privacy (개인 상세 정보)
	            pstmt = conn.prepareStatement(sql2.toString());
	            pstmt.setString(1, member.getMemId());
	            pstmt.setString(2, member.getMemName());
	            pstmt.setString(3, member.getMemGen());
	            pstmt.setDate(4, date);
	            pstmt.setString(5, member.getMemMail());
	            pstmt.setInt(6, member.getMemPnum());
	            
	            // 쿼리 실행
	            pstmt.executeUpdate();
	            
	            // 완료시 커밋
	            conn.commit(); 
	            
	        } catch (SQLException e) {
	            // 오류시 롤백
	            conn.rollback();             
	            throw new RuntimeException(e.getMessage());
	        } catch (ClassNotFoundException e) {
				e.printStackTrace();
			} finally {
	            // Connection, PreparedStatement를 닫는다.
	            try{
	                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	                if ( conn != null ){ conn.close(); conn=null; }
	            }catch(Exception e){
	                throw new RuntimeException(e.getMessage());
	            }
	        } 
	    }// end addMem
	
	// 아이디 찾기
	public memDTO findId(String name, String mail) {
		try {
			member = new memDTO();
			
			conn=DB.getConnction();
			
			String sql1="SELECT MEMMAIL FROM PRIVACY WHERE MEMNAME=?";
			String sql2="SELECT MEMID FROM PRIVACY WHERE MEMNAME=? AND MEMMAIL=?";

			member.setMemName(name);
			member.setMemId("");
			member.setMemMail("");
			
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
                member.setMemMail(rs.getString("memMail"));
			}

			System.out.println(member.getMemMail()+1);
			System.out.println(member.getMemId()+2);
			
			pstmt = conn.prepareStatement(sql2);
			pstmt.setString(1, name);
			pstmt.setString(2, member.getMemMail());
			rs = pstmt.executeQuery();
			
			if(rs.next()){
                member.setMemId(rs.getString("memId"));
			}
			
			System.out.println(member.getMemMail()+3);
			System.out.println(member.getMemId()+4);
			
			if(member.getMemId().equals("")){
				member.setMemId("x");
				member.setMemMail("x");
				System.out.println(member.getMemId());
			}
			
			System.out.println(member.getMemMail()+5);
			System.out.println(member.getMemId()+6);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
            // Connection, PreparedStatement를 닫는다.
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
		}
		return member;
	}// end findId
	
	// 비번 찾기
	public memDTO findPw(String id, String name, String mail) {
			
		try {
			member = new memDTO();
			
			conn=DB.getConnction();
			
			member.setMemPw("");
			member.setMemMail("");
			
			String sql1="select MEMMAIL FROM PRIVACY WHERE MEMNAME=?";
			
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
                member.setMemMail(rs.getString("memMail"));
			}
			
			if(member.getMemMail().equals(mail)){
				
				String sql2="SELECT MEMPW FROM MEMBER WHERE MEMID=(SELECT MEMID FROM PRIVACY WHERE MEMNAME=? AND MEMMAIL=?)";
				
				pstmt = conn.prepareStatement(sql2);
				pstmt.setString(1, name);
				pstmt.setString(2, member.getMemMail());
				rs = pstmt.executeQuery();
				
				if(rs.next()){
	                member.setMemPw(rs.getString("memPw"));
				}
			}
			
			if(member.getMemPw().equals("")){
				member.setMemPw("x");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
            // Connection, PreparedStatement를 닫는다.
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
		}
		return member;
	}// end findPw


	//회원 정보 조회 admin 확인
	public memDTO getUserInfo(String memId) throws SQLException {
		String sql="SELECT * FROM MEMBER WHERE MEMID=?";
		
		memDTO dto = new memDTO();
		try {
			try{
				conn=DB.getConnction();
				//conn=db.getConnction();
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
			//회원정보
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			rs=pstmt.executeQuery();
			if(rs.next()){
				dto.setMemCate(rs.getString("memCate"));
			}
			
			//conn.commit();
		}catch(SQLException e){
			//conn.rollback();
		}finally{
			conn.setAutoCommit(true);
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		
		System.out.println("완료");
		return dto;
	}// end getUserInfo

}// end memDAO