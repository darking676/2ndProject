package com.admin.model;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClaDao {

    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public ClaDao() throws SQLException, ClassNotFoundException {
        System.out.println("cladao �떎�뻾");
        try{
            Context init = new InitialContext();
            DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/system");
            connection = ds.getConnection();
        }catch(Exception ex){
            System.out.println("DB �뿰寃� �떎�뙣 : " + ex);
            return;
        }
    }

    public List selectAll(int page, int limit)  {
        List<ClaDto> articleList = new ArrayList<ClaDto>();
        String sql = "select * from (select ROWNUM rnum, classNo, className, classAddress, classIpD, classIpN" +
                " from (select * from class ORDER BY classNo desc)) where rnum>=? and rnum<=?";
        int startrow=(page-1)*10+1; //�씫湲� �떆�옉�븷 row 踰덊샇.
		int endrow=startrow+limit-1; //�씫�쓣 留덉�留� row 踰덊샇.
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, startrow);
			preparedStatement.setInt(2, endrow);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                ClaDto article = new ClaDto();
                article.setClassNo(resultSet.getInt("classNo"));
                article.setClassName(resultSet.getString("className"));
                article.setClassAddress(resultSet.getString("classAddress"));
                article.setClassIpD(resultSet.getDate("classIpD"));
                article.setClassIpN(resultSet.getString("classIpN"));
                System.out.println("articleList�쟾�넚");
                articleList.add(article);
            }
            return articleList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if(resultSet!=null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(preparedStatement!=null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }
    
    public boolean classInsert(ClaDto cla){
        String sql="insert into class values (CLASSNO_SEQ.nextval, ?, ?, sysdate, 'E1')";

        int result=0;

        try{
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, cla.getClassName());
            preparedStatement.setString(2, cla.getClassAddress());

            result=preparedStatement.executeUpdate();
            if(result==0)return false;

            return true;
        }catch(Exception ex){
            System.out.println("classInsert �뿉�윭 : "+ex);
        }finally{
            if(resultSet!=null) try{resultSet.close();}catch(SQLException ex){}
            if(preparedStatement!=null) try{preparedStatement.close();}catch(SQLException ex){}
        }
        return false;
    }

    public boolean isClassWriter(int num,String pass){
        String cla_sql="select * from class where classNo = ?";
        try{
            preparedStatement = connection.prepareStatement(cla_sql);
            preparedStatement.setInt(1, num);
            resultSet=preparedStatement.executeQuery();
            resultSet.next();

            if("T1".equals(pass)){
                System.out.println("isClassWrite = "+"true");
                return true;
            }
        }catch(SQLException ex){
            System.out.println("isClassWriter �뿉�윭 : "+ex);
        }
        System.out.println("isClassWrite = "+"false");
        return false;

    }

    public boolean classDelete(int num) {
        String cla_delete_sql="delete from class where classNo=?";
        System.out.println("classDelete �떎�뻾");
        int result=0;

        try{
            preparedStatement=connection.prepareStatement(cla_delete_sql);
            System.out.println("sql�엯�젰 �셿猷�");
            preparedStatement.setInt(1, num);
            System.out.println("prtmt �셿猷�");
            result = preparedStatement.executeUpdate();
            System.out.println("executeUpdate �셿猷�");
            if(result==0)return false;

            System.out.println("�궘�젣 �꽦怨�");
            return true;
        }catch(Exception ex){
            System.out.println("boardDelete �뿉�윭 : "+ex);
        }finally{
            try{
                if(preparedStatement!=null)preparedStatement.close();
            }catch(Exception ex) {}
        }

        return false;
    }

    public int getListCount() {
        int x= 0;

		try{
			preparedStatement=connection.prepareStatement("select count(*) from class");
			resultSet = preparedStatement.executeQuery();

			if(resultSet.next()){
				x=resultSet.getInt(1);
			}
		}catch(Exception ex){
			System.out.println("getListCount �뿉�윭: " + ex);
		}finally{
			if(resultSet!=null) try{resultSet.close();}catch(SQLException ex){}
			if(preparedStatement!=null) try{preparedStatement.close();}catch(SQLException ex){}
		}
		return x;
    }
}
