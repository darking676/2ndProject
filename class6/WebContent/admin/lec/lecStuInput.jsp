<%@ page import="java.util.List" %>
<%@ page import="com.admin.model.LecDto" %><%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 5. 30.
  Time: 오후 5:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <style type="text/css">


    </style>
    <script language="JavaScript">
        function updateLec() {
            updateform.submit();
        }
    </script>
    <jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
<%
    List articleList = (List) request.getAttribute("articleList");
%>
    <div class="main" style="overflow: auto" >
    <h1>신청자 리스트</h1>
    <form action="./LecStuUpdate.com" method="post" name="updateform">
        <table>
            <tr>
                <th>선택</th>
                <th>학생ID</th>
                <th>이름</th>
                <th>성별</th>
                <th>상태</th>
            </tr>
            <%
                for(int i = 0; i < articleList.size(); i++){
                    LecDto list = (LecDto) articleList.get(i);
                    String memId = list.getMemId();
                    System.out.println(list.getLecStuName());
					if(!("없음".equals(list.getLecStuName()))){
						continue;
					}
                    if(memId != null){
					
            %>
            <tr>
                <td><input type="checkbox" name="chkbox" value="<%=memId%>"></td>
                <td><%=memId %></td>
                <td><%=list.getMemName()%></td>
                <td><%=list.getMemGen()%></td>
                <td><%if(list.getTeaId()==null || "null".equals(list.getTeaId())) out.print("없음");
                		else out.print(list.getTeaId());%></td>
            </tr>
            <%
                   	}
                }
            %>
            <tr>
                <td>선택된 학생</td>
                <td>
                    <select name="lecSelect">
                        <option value="없음">없음</option>
                        <%
                            for(int j = 0; j < articleList.size(); j++){
                                LecDto leclist = (LecDto) articleList.get(j);
                                String lec = leclist.getLecName();

                                if(lec != null){
                        %>
                        <option value="<%=lec%>"><%=lec %></option>
                        <%
                                }
                            }
                        %>
                    </select>
                </td>
                <td><a href="javascript:updateLec()">배정</a></td>
                <td><a href="../index.jsp">인덱스</a></td>
            </tr>
        </table>
    </form>
	</div>
		<jsp:include page="${realpath }/layout/Footer_admin.jsp" />
	</body>
</html>
