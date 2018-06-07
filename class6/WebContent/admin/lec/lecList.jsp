<%@ page import="java.util.List" %>
<%@ page import="com.admin.model.LecDto" %><%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 5. 28.
  Time: 오전 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>$Title$</title>
	<jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
    <link href="../../css/lecListStyles.css?ver=1" rel="stylesheet">
<%
	int bbscnt = 0;
    List articleList = (List) request.getAttribute("articleList");
%>
<div class="main" style="overflow: auto" >
	<div class="title">
		<span class="maintitle">강의 리스트</span>
	</div>
	<form action="" class="leclistform">
    <table>
        <tr>
            <th>No.</th>
            <th>강의명</th>
            <th>강의 설명</th>
            <th>강사</th>
            <th>강의장</th>
            <th>수강인원</th>
            <th>시작일</th>
            <th>종료일</th>
            <th>상태</th>
        </tr>
        <%
            for(int i=0;i<articleList.size();i++){
                LecDto list= (LecDto) articleList.get(i);
                bbscnt++;
                System.out.println(bbscnt);
        %>
        <tr>
            <td><input type="checkbox"></td>
            <td><%=list.getLecName() %></td>
            <td><%=list.getLecCon() %></td>
            <td><%=list.getTeaId() %></td>
            <td><%=list.getClassAddress() %></td>
            <td><%=list.getClassNum() %></td>
            <td><%=list.getLecStart() %></td>
            <td><%=list.getLecEnd() %></td>
            <td></td>
        </tr>
        <%
            }
		if(bbscnt != 10){
			for(int i = 0; i < 10-bbscnt; i++){
				out.print("<tr>");
				out.print("<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>");
				out.print("</tr>");
			}
		}
        %>
        <tr><td></td></tr>
        <tr>
        <td colspan="9">
        	<button id="inputbtn" type="button" onclick="location.href='lecInput.com'">입력</button>
        </td>
        </tr>
    </table>
	</form>
	</div>
		<jsp:include page="${realpath }/layout/Footer_admin.jsp" />
	</body>
</html>

