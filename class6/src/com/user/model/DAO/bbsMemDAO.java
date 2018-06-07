package com.user.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DB;

import com.user.model.DTO.bbsMemDTO;


public class bbsMemDAO//회원 게시판에 사용할 DAO 
{
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	// 시퀀스를 가져온다.
	public int getSeq()
	{
		int result = 1;
		
		try {
			conn = DB.getConnction();
			
			// 시퀀스 값을 가져온다. (DUAL : 시퀀스 값을 가져오기위한 임시 테이블)
			StringBuffer sql = new StringBuffer();
			sql.append("SELECT BOARD_NUM.NEXTVAL FROM DUAL");
			
			pstmt = conn.prepareStatement(sql.toString());
			// 쿼리 실행
			rs = pstmt.executeQuery();
			
			if(rs.next())	result = rs.getInt(1);

		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
		
		close();
		return result;	
	} // end getSeq
	
//// 글 삽입
//	public boolean boardInsert(bbsMemDTO board)
//	{
//		boolean result = false;
//		
//		try {
//			conn = DB.getConnction();
//			
//			StringBuffer sql = new StringBuffer();
//			sql.append("INSERT INTO MEMBER_BOARD");
//			sql.append("(BOARD_NUM, BOARD_ID, BOARD_SUBJECT, BOARD_CONTENT, BOARD_FILE");
//			sql.append(", BOARD_RE_REF, BOARD_RE_LEV, BOARD_RE_SEQ, BOARD_COUNT, BOARD_DATE)");
//			sql.append(" VALUES(?,?,?,?,?,?,?,?,?,sysdate)");
//
//			// 시퀀스 값을 글번호와 그룹번호로 사용
//			int num = board.getBoard_num();
//
//			pstmt = conn.prepareStatement(sql.toString());
//			pstmt.setInt(1, num);
//			pstmt.setString(2, board.getBoard_id());
//			pstmt.setString(3, board.getBoard_subject());
//			pstmt.setString(4, board.getBoard_content());
//			pstmt.setString(5, board.getBoard_file());
//			pstmt.setInt(6, num);
//			pstmt.setInt(7, 0);
//			pstmt.setInt(8, 0);
//			pstmt.setInt(9, 0);
//			
//			int flag = pstmt.executeUpdate();
//			if(flag > 0) result = true;
//			
//		} catch (Exception e) {
//			throw new RuntimeException(e.getMessage());
//		}
//		close();
//		return result;	
//	} // end boardInsert();
	
	public List<bbsMemDTO> selectAll() throws SQLException{
		String sql="SELECT * FROM BBSMEM";
		List<bbsMemDTO> list=new ArrayList<bbsMemDTO>();
		
		try{
			try{
				conn=DB.getConnction();
				
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				bbsMemDTO bean=new bbsMemDTO();
				bean.setBbsMemNo(rs.getInt("bbsMemNo"));
				bean.setBbsMemCate(rs.getString("bbsMemCate"));
				bean.setBbsMemName(rs.getString("bbsMemName"));
				bean.setMemId(rs.getString("memId"));
				bean.setBbsMemView(rs.getInt("bbsMemView"));
				bean.setBbsMemDate(rs.getDate("bbsMemDate"));
				list.add(bean);
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
	
	public List<bbsMemDTO> selectOne(int idx) throws SQLException{
		String sql="SELECT * FROM BBSMEM WHERE BBSMEMNO=?";
		List<bbsMemDTO> list=new ArrayList<bbsMemDTO>();
		
		try{
			try{
				conn=DB.getConnction();
				
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs=pstmt.executeQuery();
			while(rs.next()){
				bbsMemDTO bean=new bbsMemDTO();
				bean.setBbsMemNo(rs.getInt("bbsMemNo"));
				bean.setBbsMemCate(rs.getString("bbsMemCate"));
				bean.setBbsMemName(rs.getString("bbsMemName"));
				bean.setBbsMemCon(rs.getString("bbsMemCon"));
				bean.setMemId(rs.getString("memId"));
				bean.setBbsMemView(rs.getInt("bbsMemView"));
				bean.setBbsMemDate(rs.getDate("bbsMemDate"));
				list.add(bean);
				
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
	
	// DB 자원해제
	private void close()
	{
		try {
			if ( pstmt != null ){ pstmt.close(); pstmt=null; }
			if ( conn != null ){ conn.close(); conn=null;	}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	} // end close()
}
