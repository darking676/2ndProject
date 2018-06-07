package com.user.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.DB;

import com.user.model.DTO.classDTO;

public class classDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public ArrayList<classDTO> loadClass(String lec) {
		// TODO Auto-generated method stub
		String sql = "select * from lechure where lecname = ?";
		ArrayList<classDTO> list = new ArrayList<classDTO>();
		
		try {
			conn = DB.getConnction();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lec);
			rs = pstmt.executeQuery();
			while(rs.next()){
				classDTO bean = new classDTO();
				bean.setLecNo(rs.getInt("lecNo"));
				bean.setLecName(rs.getString("lecName"));
				bean.setLecStart(rs.getDate("lecStart"));
				bean.setLecEnd(rs.getDate("lecEnd"));
				bean.setTeaId(rs.getString("teaId"));
				bean.setClassAddress(rs.getString("ClassAddress"));
				bean.setClassNum(rs.getInt("classNum"));
				bean.setLecIpD(rs.getDate("lecIpD"));
				bean.setLecIpN(rs.getString("lecIpN"));
				System.out.println("rs.next ³¡");
				list.add(bean);
			}
			return list;
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("datebase error : "+e);
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

}
