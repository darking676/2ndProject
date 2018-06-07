<%@ page import="java.util.List" %>
<%@ page import="com.admin.model.StuDto" %>
<%@ page import="java.sql.Date" %><%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 6. 1.
  Time: 오전 1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>$Title$</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script>
        function updatechk() {
            updateform.submit();
        }
    </script>
	<jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
<%
    List articleList = (List) request.getAttribute("articleList");
    int listcount=((Integer)request.getAttribute("listcount")).intValue();
	int nowpage=((Integer)request.getAttribute("page")).intValue();
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	int startpage=((Integer)request.getAttribute("startpage")).intValue();
	int endpage=((Integer)request.getAttribute("endpage")).intValue();
%>
<div class="main" style="overflow: auto" >
    <h1>출결 체크 리스트</h1>
    <form action="./stuChkUpdate.com" method="post" name="updateform">
        <table>
            <tr>
                <th>선택</th>
                <th>이름</th>
                <th>아이디</th>
                <th>상태</th>
                <th>이수율</th>
            </tr>
            <%
                for(int i = 0; i < articleList.size(); i++){
                    StuDto list = (StuDto) articleList.get(i);
            %>
            <tr>
                <td><input type="checkbox" name="stuchk" value="<%=list.getMemId()%>"></td>
                <td><%=list.getMemName()%></td>
                <td><%=list.getMemId()%></td>
                <td><input type="" name="textbox" readonly="readonly" value="<%
                        if ((list.getChkIpD()).equals("null")) out.print("결석");
                            else out.print(list.getChkIpD());
                    %>">
                </td>
                <td>0.83%</td>
            </tr>
            <%
                }
            %>
            <tr>
            <td style=font-family:Tahoma;font-size:10pt;>
			<%if(nowpage<=1){ %>
			[이전]&nbsp;
			<%}else{ %>
			<a href="./stuChkList.com?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
			<%} %>
			
			<%for(int a=startpage;a<=endpage;a++){
				if(a==nowpage){%>
				[<%=a %>]
				<%}else{ %>
				<a href="./stuChkList.com?page=<%=a %>">[<%=a %>]</a>&nbsp;
				<%} %>
			<%} %>
			<%if(nowpage>=maxpage){ %>
			[다음]
			<%}else{ %>
			<a href="./stuChkList.com?page=<%=nowpage+1 %>">[다음]</a>
			<%} %>
		    </td>
        </tr>
            <tr>
                <td>선택된 학생</td>
                <td>
                    <select name="chkselect">
                        <option value="출석">출석</option>
                        <option value="조퇴">조퇴</option>
                        <option value="지각">지각</option>
                        <option value="결석">결석</option>
                    </select>
                </td>
                <td><a href="javascript:updatechk()">수정</a></td>
                <td><a href="">뒤로</a></td>
            </tr>
            
        </table>
    </form>
	</div>
		<jsp:include page="${realpath }/layout/Footer_admin.jsp" />
	</body>
</html>
