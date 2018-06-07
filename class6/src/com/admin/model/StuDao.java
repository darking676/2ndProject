package com.admin.model;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class StuDao {

    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public StuDao() throws SQLException, ClassNotFoundException {
        System.out.println("dao �떎�뻾");
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
        String sql = "select count(*) from (select distinct privacy.memId, privacy.memName, grade.graJava, grade.graWeb, grade.graDb, grade.graIpD" +
                " from privacy full outer join grade on grade.memId = privacy.memId order by MEMNAME)";
		try{
			preparedStatement=connection.prepareStatement(sql);
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
    public int getChkListCount(){
        int x= 0;
        String sql = "select count(*) from (select distinct e.memId, e.memName, d.chkIpD, d.teaId" +
                "                 from (select memId, memName from privacy) e full outer join chk d on d.memId = e.memId order by e.MEMNAME)";
		try{
			preparedStatement=connection.prepareStatement(sql);
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


    public List inputList(int page, int limit) {
        List<StuDto> articleList = new ArrayList<>();
        String sql = "select * from (select ROWNUM rnum, memId, memName, graJava, graWeb, graDb, graIpD" +
                "               from (select distinct privacy.memId, privacy.memName, grade.graJava, grade.graWeb, grade.graDb, grade.graIpD" +
                "                 from privacy full outer join grade on grade.memId = privacy.memId order by MEMNAME))" +
                "                  where rnum>=? and rnum<=?";
        int startrow=(page-1)*10+1; //�씫湲� �떆�옉�븷 row 踰덊샇.
		int endrow=startrow+limit-1; //�씫�쓣 留덉�留� row 踰덊샇.
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, startrow);
			preparedStatement.setInt(2, endrow);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                StuDto article = new StuDto();
                article.setMemId(resultSet.getString("memId"));
                article.setMemName(resultSet.getString("memName"));
                article.setGraJava(resultSet.getInt("graJava"));
                article.setGraweb(resultSet.getInt("graWeb"));
                article.setGradb(resultSet.getInt("graDb"));
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

    public boolean stuGraUpdate(StuDto stuDto) {
        String sql = "update grade set graJava = ?, graWeb = ?, graDb = ? where memId = ?";

        try{
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, stuDto.getGraJava());
            preparedStatement.setInt(2, stuDto.getGraweb());
            preparedStatement.setInt(3, stuDto.getGradb());
            preparedStatement.setString(4, stuDto.getMemId());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            if(resultSet!=null)try{resultSet.close();}catch(SQLException ex){}
            if(preparedStatement!=null)try{preparedStatement.close();}catch(SQLException ex){}
        }
        return false;
    }

    public void stuNullInsert(String ids) {
        String sql = "insert into grade values (?, (select memName from privacy where memId = ?), 00, 00, 00, sysdate, 'T1', '', '')";
        try{
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, ids);
            preparedStatement.setString(2, ids);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
        }finally{
            if(resultSet!=null)try{resultSet.close();}catch(SQLException ex){}
            if(preparedStatement!=null)try{preparedStatement.close();}catch(SQLException ex){}
        }
    }

    public List stuChkList(int page, int limit) {
        List<StuDto> articleList = new ArrayList<>();

        String sql = "select * from (select ROWNUM rnum, memId, memName, chkIpD, teaId" +
                "               from (select distinct e.memId, e.memName, d.chkIpD, d.teaId" +
                "                 from (select memId, memName from privacy) e full outer join chk d on d.memId = e.memId order by e.MEMNAME))" +
                "                  where rnum>=? and rnum<=?";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String Ipd = null;
        int startrow=(page-1)*10+1; //�씫湲� �떆�옉�븷 row 踰덊샇.
		int endrow=startrow+limit-1; //�씫�쓣 留덉�留� row 踰덊샇.
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, startrow);
			preparedStatement.setInt(2, endrow);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                StuDto article = new StuDto();
                article.setMemId(resultSet.getString("memId"));
                article.setMemName(resultSet.getString("memName"));
                if(resultSet.getDate("chkIpD")==null){
                    article.setChkIpD("null");
                }else {
                    Ipd = simpleDateFormat.format(resultSet.getDate("chkIpD"));
                    article.setChkIpD(Ipd);
                }

                article.setTeaId(resultSet.getString("teaId"));
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

    public boolean chkUpdate(StuDto stuDto) {

        String sql = "update chk set teaId = ? where memId = ?";
        String sql2 = "insert into chk values (?, sysdate, '', ?)";
        try{
            String[] selList = stuDto.getSelectList();
            String[] chkList = stuDto.getIsNull();

            for(int i = 0; i < selList.length; i++){
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, stuDto.getTeaId());
                preparedStatement.setString(2, selList[i]);
                int result = preparedStatement.executeUpdate();

                if(result == 0) {
                    preparedStatement = connection.prepareStatement(sql2);
                    preparedStatement.setString(1, selList[i]);
                    preparedStatement.setString(2, stuDto.getTeaId());
                    preparedStatement.executeUpdate();
                    System.out.println("insert�옉�룞");
                }
            }
            return true;
        } catch (SQLException e) {
            System.out.println("chkUpdate �뿉�윭 : "+e);
        }finally{
            if(resultSet!=null)try{resultSet.close();}catch(SQLException ex){}
            if(preparedStatement!=null)try{preparedStatement.close();}catch(SQLException ex){}
        }
        return false;
    }
}
