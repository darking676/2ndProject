package com.admin.model;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class LecDao {

    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public LecDao() throws SQLException, ClassNotFoundException {
        try{
            Context init = new InitialContext();
            DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/system");
            connection = ds.getConnection();
        }catch(Exception ex){
            System.out.println("DB �뿰寃� �떎�뙣 : " + ex);
            return;
        }
    }

    public int getListCount() {
        int x= 0;

        try{
            preparedStatement=connection.prepareStatement("select count(*) from board");
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

    public List selectAll(){
        List<LecDto> articleList = new ArrayList<>();
        String sql = "select * from lechure order by lecNo desc";
        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                LecDto article = new LecDto();
                article.setLecNo(resultSet.getInt("lecNo"));
                article.setLecName(resultSet.getString("lecName"));
                article.setLecCon(resultSet.getString("lecCon"));
                article.setTeaId(resultSet.getString("teaId"));
                article.setClassNum(resultSet.getInt("classNum"));
                article.setLecStart(resultSet.getDate("lecStart"));
                article.setLecEnd(resultSet.getDate("lecEnd"));
                article.setClassAddress(resultSet.getString("classAddress"));
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

    public List<LecDto> getDetail() {
        List<LecDto> articleList = new ArrayList<LecDto>();
        String sql = "select distinct e.memId, d.className" +
                " from (select * from member where memCate = '강사') e" +
                " full outer join class d" +
                " on e.memid = d.className";

        try{
            preparedStatement = connection.prepareStatement(sql);
            resultSet= preparedStatement.executeQuery();

            while(resultSet.next()){
                LecDto dto = new LecDto();
                String memid = "";
                String address = "";

                memid = resultSet.getString("memId");
                address = resultSet.getString("className");
                System.out.println("memid : "+memid+" // address : "+address);
                if(!(memid == "null")) dto.setTeaId(memid);
                if(!(address == "null")) dto.setClassAddress(address);
                articleList.add(dto);
            }
            return articleList;
        }catch(Exception ex){
            System.out.println("getDetail 오류 : " + ex);
        }finally{
            if(resultSet!=null)try{resultSet.close();}catch(SQLException ex){}
            if(preparedStatement !=null)try{preparedStatement.close();}catch(SQLException ex){}
        }
        return null;
    }

    public boolean lecInsert(LecDto lecDto) {
        String sql = "insert into LECHURE values (?, ?, ?, ?, ?, ?, 1, ?, sysdate, 'E1', ?)";
        Random generator = new Random();
        int result = 0;
        int ran = generator.nextInt(500);
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, ran);
            preparedStatement.setString(2, lecDto.getLecName());  // 媛뺤쓽 �씠由�
            preparedStatement.setDate(3, lecDto.getLecStart());    // �떆�옉�씪
            preparedStatement.setDate(4, lecDto.getLecEnd());    // 醫낅즺�씪
            preparedStatement.setString(5, lecDto.getLecCon());    // 媛뺤쓽�꽕紐�
            preparedStatement.setString(6, lecDto.getTeaId());  // 媛뺤궗
            preparedStatement.setInt(7, lecDto.getClassNum());     // �닔媛뺤씤�썝
            preparedStatement.setString(8, lecDto.getClassAddress());     // 媛뺤쓽�옣

            result = preparedStatement.executeUpdate();
            if(result == 0) return false;

            return true;
        } catch (Exception e) {
            System.out.println("lecInsert 에러 : "+e);
        } finally {
            if(resultSet!=null) try{resultSet.close();}catch(SQLException ex){}
            if(preparedStatement!=null) try{preparedStatement.close();}catch(SQLException ex){}
        }
        return false;
    }

    public List lecStuList() {
        List<LecDto> articleList = new ArrayList<>();
        String sql = "select distinct e.memId, e.memName,e.memGen,e.lecNo,e.LECSTUNAME, d.LECNAME from (select distinct e.memId, d.memName, d.memGen, d.lecNo, d.LECSTUNAME from submit e inner join privacy d on e.memId = d.memId) e full outer join lechure d on e.memId = d.LECNAME order by e.MEMID desc";
//        String sql = "select distinct e.memId, e.memName,e.memGen,e.lecNo,e.LECSTUNAME, d.LECNAME " +
//                "from (select distinct e.memId, d.memName, d.memGen, d.lecNo, d.LECSTUNAME " +
//                "from member e " +
//                "inner join privacy d " +
//                "on e.memId = d.memId) e " +
//                "full outer join lechure d " +
//                "on e.memId = d.LECNAME order by e.MEMID desc";
        System.out.println("sql : "+sql);
        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                LecDto article = new LecDto();

                article.setMemId(resultSet.getString("memId"));
                article.setMemName(resultSet.getString("memName"));
                article.setMemGen(resultSet.getString("memGen"));
                article.setLecNo(resultSet.getInt("lecNo"));
                article.setLecName(resultSet.getString("lecName"));
                article.setLecStuName(resultSet.getString("lecStuName"));
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

    public boolean lecStuUpdate(LecDto lecDto) {
        String sql="update PRIVACY set LECSTUNAME=? where memId=?";

        try{
            String[] selList = lecDto.getSelectList();

            for(int i = 0; i<selList.length; i++){
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, lecDto.getLecStuName());
                preparedStatement.setString(2, selList[i]);
                preparedStatement.executeUpdate();
            }

            return true;
        }catch(Exception ex){
            System.out.println("lecModify �뿉�윭 : " + ex);
        }finally{
            if(resultSet!=null)try{resultSet.close();}catch(SQLException ex){}
            if(preparedStatement!=null)try{preparedStatement.close();}catch(SQLException ex){}
        }
        return false;
    }
}
