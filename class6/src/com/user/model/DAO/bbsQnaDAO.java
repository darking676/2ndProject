package com.user.model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.user.model.DTO.bbsDTO;
import com.user.model.DTO.bbsQnaDTO;

import util.DB;

public class bbsQnaDAO {
	
	//private static bbsQnaDAO instance;
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 싱글톤 패턴
//	private bbsQnaDAO(){
//		public Static bbsQnaDAO getInstance(){
//			if(instance==null)
//				instance=new bbsQnaDAO();
//			return instance;
//	}
	
	//메인 상담게시판
		public ArrayList<bbsQnaDTO> view(){
			String sql="SELECT * FROM BBSQNA ORDER BY BBSQNANO DESC";
			
			ArrayList<bbsQnaDTO> bbs=new ArrayList<bbsQnaDTO>();
			
			try {
				try{
					conn=DB.getConnction();
					//conn=db.getConnction();
				}catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()){
					bbsQnaDTO view = new bbsQnaDTO();
					view.setQnaNo(rs.getInt("bbsQnaNo"));
					view.setQnaName(rs.getString("bbsQnaName"));
					view.setQnaIpD(rs.getDate("bbsQnaIpD"));
					bbs.add(view);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			return bbs;
		}
	
	// 상담 입력 정보 가져옴
	public List getBbsList(int page, int limit){
		List<bbsQnaDTO> list = new ArrayList<bbsQnaDTO>();
		String sql="select * from (select rownum rnum, bbsQnaNo, bbsQnaPW, bbsQnaCate, BBSQNAName, bbsQnaCon, bbsQnaW, bbsQnaIPD, bbsQnaView from BBSQNA order by bbsqnano desc) where rnum>=? and rnum<=?";
        int startrow=(page-1)*10+1; 
		int endrow=startrow+limit-1;
		int temp=0;
		try {
			System.out.println("start = "+startrow+" end = "+endrow);
			conn=DB.getConnction();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				bbsQnaDTO bean=new bbsQnaDTO();
				bean.setQnaNo(rs.getInt("bbsqnaNo"));
				bean.setQnaPw(rs.getString("bbsqnaPw"));
				bean.setQnaCate(rs.getString("bbsqnaCate"));
				bean.setQnaName(rs.getString("bbsqnaName"));
				bean.setQnaCon(rs.getString("bbsqnaCon"));
				bean.setQnaW(rs.getString("bbsqnaW"));
				bean.setQnaIpD(rs.getDate("bbsqnaIpD"));
				bean.setQnaView(rs.getInt("bbsqnaView"));
				list.add(bean);
			}
			return list;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
				try {
					if(rs!=null) rs.close();
					if(pstmt!=null) pstmt.close();
					if(conn!=null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		
		return null;
	}
	
	
	// 상담게시글 볼때 비밀번호 필요한 경우
	public bbsQnaDTO selectOne(int bbsqnano,String pw) {
		String sql="select * from bbsqna where bbsqnano=? and bbsqnapw=?";	// 회원ID 경로 정보 가져오는거 체크!
		bbsQnaDTO bean = new bbsQnaDTO();
		
		try {
			conn=DB.getConnction();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, bbsqnano);
			pstmt.setString(2, pw);
			rs=pstmt.executeQuery();
			System.out.println("rs--------------"+rs);
			if(!rs.isBeforeFirst()){
				return null;
			}
			if(rs.next()){
				bean.setQnaNo(rs.getInt("bbsqnaNo"));
				bean.setQnaPw(rs.getString("bbsqnaPw"));
				bean.setQnaCate(rs.getString("bbsqnaCate"));
				bean.setQnaName(rs.getString("bbsqnaName"));
				bean.setQnaCon(rs.getString("bbsqnaCon"));
				bean.setQnaW(rs.getString("bbsqnaW"));
				bean.setQnaIpD(rs.getDate("bbsqnaIpD"));
				bean.setQnaView(rs.getInt("bbsqnaView"));
			}	
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}finally{
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return bean;
		}
	
	// 게시글 수정할려고 할때
		public bbsQnaDTO selectOne(int bbsqnano) {
			String sql="select * from bbsqna where bbsqnano=?";	// 회원ID 경로 정보 가져오는거 체크!
			bbsQnaDTO bean = new bbsQnaDTO();
			
			try {
				conn=DB.getConnction();
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, bbsqnano);
				rs=pstmt.executeQuery();
				if(rs.next()){
					bean.setQnaNo(rs.getInt("bbsqnaNo"));
					bean.setQnaPw(rs.getString("bbsqnaPw"));
					bean.setQnaCate(rs.getString("bbsqnaCate"));
					bean.setQnaName(rs.getString("bbsqnaName"));
					bean.setQnaCon(rs.getString("bbsqnaCon"));
					bean.setQnaW(rs.getString("bbsqnaW"));
					bean.setQnaIpD(rs.getDate("bbsqnaIpD"));
					bean.setQnaView(rs.getInt("bbsqnaView"));
					}	
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}finally{
					try {
						if(rs!=null)rs.close();
						if(pstmt!=null)pstmt.close();
						if(conn!=null)conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				return bean;
			}
	
	// 입력값 저장, 항목 확인 및 정리 필요!
	public void insertOne(String title, String contents,String pw,String w) {
		String sql="insert into bbsQna values (bbsQna_seq.nextval,?,'상담',?,?,?,SYSDATE,0)";
		
		try {
			conn=DB.getConnction();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, pw);	
			pstmt.setString(2, title);
			pstmt.setString(3, contents);
			pstmt.setString(4, w);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
				try {
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		
		}
	
	// 수정
	public int updateOne(int no, String name, String con,String pw) {
		
		String sql="update bbsQna set bbsqnaname=?,bbsqnacon=? ,bbsqnapw=? where qnano=?";
		try {
			conn=DB.getConnction();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, con);
			pstmt.setString(2, name);
			pstmt.setString(3, pw);
			pstmt.setInt(4, no);
			return pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return 0;
	}
	
	/**
     *  검색창
	 * @param limit 
	 * @param page 
     **/
    public ArrayList<bbsQnaDTO> getMemberlist(String keyField, String keyWord, int page, int limit) {
       
        String sql ="select * from (select rownum rnum, bbsQnaNo, bbsQnaPW, "+
        "bbsQnaCate, BBSQNAName, bbsQnaCon, bbsQnaW, bbsQnaIPD, bbsQnaView "+
        "from bbsQna ";
        
        if(keyWord != null && !keyWord.equals("") ){
            sql +="WHERE "+keyField.trim()+" LIKE '%"+keyWord.trim()+"%' order by bbsqnano desc) where rnum>=? and rnum<=?";
        }else{//모든 레코드 검색
            sql = "select * from bbsqna order by bbsqnano desc";
            System.out.println("----------------------검색실패");
        }
        
        System.out.println("sql = " + sql);
    	
        ArrayList<bbsQnaDTO> sh = new ArrayList<bbsQnaDTO>();
        int startrow=(page-1)*10+1;
        int endrow=startrow+limit-1;		
       
    	try {
    		conn=DB.getConnction();			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				bbsQnaDTO view = new bbsQnaDTO();
				view.setQnaNo(rs.getInt("bbsQnaNo"));
				view.setQnaName(rs.getString("bbsQnaname"));
				view.setQnaW(rs.getString("bbsQnaW"));
				view.setQnaIpD(rs.getDate("bbsQnaIpD"));
				view.setQnaView(rs.getInt("bbsQnaView"));
				sh.add(view);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
        return sh;
    }  
	
	
	// 상담 입력 정보 삭제
	public void deleteOne(int qnano) {
		String sql="delete from bbsqna where bbsqnano=?";
			try {
				conn=DB.getConnction();
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, qnano);
				pstmt.executeUpdate();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally{
				try {
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		}
	
	//상담 조회수 증가
		public int updatecnt(int bbsNo) {
			String sql ="update bbsqna set bbsQnaView = bbsQnaView +1 where bbsQnano=?";
			
			try {
				try{
					conn=DB.getConnction();
					//conn=db.getConnction();
				}catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, bbsNo);
				return pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return 0;
		}

		public int getChkListCount() {
			// TODO Auto-generated method stub
			int x= 0;
	        String sql = "select count(*) from BBSQNA";
			try{
				conn=DB.getConnction();
				pstmt=conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					x=rs.getInt(1);
				}
			}catch(Exception ex){
				System.out.println("getListCount db Error: " + ex);
			}finally{
				if(rs!=null) try{rs.close();}catch(SQLException ex){}
				if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			}
			return x;
		}
		public int getSearchChkListCount(String keyField, String keyWord) {
			// TODO Auto-generated method stub
			int x= 0;
	        String sql = "select count(*) from BBSQNA ";
	        if(keyWord != null && !keyWord.equals("") ){
	            sql +="WHERE "+keyField.trim()+" LIKE '%"+keyWord.trim()+"%'";
	        }else{//모든 레코드 검색
	            sql = "select * from bbsqna order by bbsqnano desc";
	            System.out.println("----------------------검색실패");
	        }
			try{
				conn=DB.getConnction();
				pstmt=conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					x=rs.getInt(1);
				}
			}catch(Exception ex){
				System.out.println("getListCount db Error: " + ex);
			}finally{
				if(rs!=null) try{rs.close();}catch(SQLException ex){}
				if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			}
			return x;
		}	
	}
	

