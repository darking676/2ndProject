<%@ page import="java.util.List" %>
<%@ page import="com.admin.model.LecDto" %><%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 5. 30.
  Time: 오전 5:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
    <link rel="stylesheet" href="../../css/lecInputstyles.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#startdatepicker" ).datepicker();
            $( "#enddatepicker").datepicker();
            $( "#startdatepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
            $( "#enddatepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
        } );
        
        function addLec() {
            lecform.submit();
        }
    </script>
    
<%
    List articleList = (List) request.getAttribute("articleList");
%>
    <div class="main" style="overflow: auto" >
    <div class="title">
		<span class="maintitle">강의 리스트</span>
	</div>
    <form action="./LecAddAction.com" method="post" name="lecform">
        <table>
            <tr>
                <td>강의 이름</td>
                <td><input name="InputLecName" type="text" size="30"></td>
            </tr>
            <tr>
                <td>강의 설명</td>
                <td><input name="InputLecCon" type="text" size="30"></td>
            </tr>

            <tr>
                <td>강사</td>
                <td>
                    <select name="tea">
                        <option value="">선택해주세요</option>
                        <%
                            for(int i=0; i<articleList.size(); i++){
                                LecDto list = (LecDto) articleList.get(i);
                                String teaid = list.getTeaId();
                                if(teaid != null){
                        %>
                        <option><%=teaid %></option>
                        <%
                                }else{
                                    System.out.println("teaid = null "+i);
                                }
                            }
                        %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>강의장</td>
                <td>
                    <select name="cla">
                        <option value="">선택해주세요</option>
                        <%
                            for(int i=0; i<articleList.size(); i++){
                                LecDto list = (LecDto) articleList.get(i);
                                String address = list.getClassAddress();
                                if(address != null){
                        %>
                        <option><%=address %></option>
                        <%
                                }else{
                                    System.out.println("address = null "+i);
                                }
                            }
                        %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>수강인원</td>
                <td><input name="InputClassNum" type="text" size="30"></td>
            </tr>
            <tr>
                <td>시작일</td>
                <td><input type="text" id="startdatepicker" name="startdate" size="30"></td>
            </tr>
            <tr>
                <td>종료일</td>
                <td><input type="text" id="enddatepicker" name="enddate" size="30"></td>
            </tr>
            <tr>
                <td><button class="inputbtn" type="button" onclick="addLec()">입력</button></td>
                <td><button class="backbnt" type="button" onclick="window.history.go(-1); return false;">취소</button></td>
            </tr>
        </table>
    </form>
    </div>
		<jsp:include page="${realpath }/layout/Footer_admin.jsp" />
	</body>
</html>
