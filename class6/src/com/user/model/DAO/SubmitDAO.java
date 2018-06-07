package com.user.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DB;

public class SubmitDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public boolean submitClass(String id, String subject) {
		// TODO Auto-generated method stub
		String sql = "insert into submit values(?,?,?)";
		System.out.println("submitClass 에서 받은 ID, subject "+id+subject);
		int result;
		try {
			conn = DB.getConnction();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, subject);
			pstmt.setString(3, id);
			result = pstmt.executeUpdate();
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("database errer : "+e);
			
		} finally{
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		System.out.println("id -- "+id+"   subject -- "+subject);
		return false;
	}

}
