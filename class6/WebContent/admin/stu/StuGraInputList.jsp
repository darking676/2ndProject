<%@ page import="java.util.List" %>
<%@ page import="com.admin.model.StuDto" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 5. 31.
  Time: 오전 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>$Title$</title>
	<jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
    <script>
        function addGra() {
            grainputform.submit();
        }
    </script>
<%
    List articleList = (List) request.getAttribute("articleList");
    int listcount=((Integer)request.getAttribute("listcount")).intValue();
	int nowpage=((Integer)request.getAttribute("page")).intValue();
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	int startpage=((Integer)request.getAttribute("startpage")).intValue();
	int endpage=((Integer)request.getAttribute("endpage")).intValue();
%>
<div class="main" style="overflow: auto" >
<h1>성적 입력</h1>
    <form action="./stuGraInput.com" method="post" name="grainputform">
    <table>
        <tr>
            <th>회원이름</th>
            <th>회원ID</th>
            <th>자바</th>
            <th>웹</th>
            <th>데이터베이스</th>
        </tr>
        <%
            for(int i=0;i<articleList.size();i++){
                StuDto list= (StuDto) articleList.get(i);
                int java = list.getGraJava();
                int web = list.getGraweb();
                int db = list.getGradb();

        %>
        <tr>
            <td><input type="text" name="groupMemId" value="<%=list.getMemId() %>" readonly="readonly"></td>
            <td><%=list.getMemName() %></td>
            <td><input type="text" name="groupJava" value="<% if (java == 0) out.print("");
                                                else out.print(java); %>"></td>
            <td><input type="text" name="groupWeb" value="<% if (web == 0) out.print("");
                                                else out.print(web); %>"></td>
            <td><input type="text" name="groupDb" value="<% if (db == 0) out.print("");
                                                else out.print(db); %>">
        </tr>
        <%
            }
        %>
        <tr>
            <td style=font-family:Tahoma;font-size:10pt;>
			<%if(nowpage<=1){ %>
			[이전]&nbsp;
			<%}else{ %>
			<a href="./stuGraInputList.stu?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
			<%} %>
			
			<%for(int a=startpage;a<=endpage;a++){
				if(a==nowpage){%>
				[<%=a %>]
				<%}else{ %>
				<a href="./stuGraInputList.stu?page=<%=a %>">[<%=a %>]</a>&nbsp;
				<%} %>
			<%} %>
			<%if(nowpage>=maxpage){ %>
			[다음]
			<%}else{ %>
			<a href="./stuGraInputList.stu?page=<%=nowpage+1 %>">[다음]</a>
			<%} %>
		    </td>
        </tr>
        <tr>
            <td><a href="javascript:addGra()">입력</a></td>
            <td><a href="../index.jsp">인덱스</a></td>
        </tr>
    </table>
    </form>
	</div>
		<jsp:include page="${realpath }/layout/Footer_admin.jsp" />
    </div>
	</div>
	</body>
</html>
