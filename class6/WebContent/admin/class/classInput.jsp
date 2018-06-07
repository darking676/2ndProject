<%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 5. 29.
  Time: 오후 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>$Title$</title>
	<jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
    <style type="text/css">
        table{
            border: 1px solid black;
        }

    </style>
    <title>Title</title>
    <script language="JavaScript">
        function addCla() {
            claform.submit();
        }
    </script>
    <div class="main" style="overflow: auto" >
    <h1>강의실 입력</h1>
    <form action="./ClaAddAction.com" method="post" name="claform">
        <table>
            <tr>
                <td>강의장명</td>
                <td><input name="InputClaName" type="text"/></td>
            </tr>
            <tr>
                <td>강의장 위치</td>
                <td><input name="InputClaAddress" type="text"/></td>
            </tr>
            <tr>
                <td><a href="javascript:addCla()">[등록]</a></td>
                <td><a href="javascript:history.go(-1)">[뒤로]</a></td>
        </table>
    </form>
    </div>
		<jsp:include page="${realpath }/layout/Footer_admin.jsp" />
    </div>
	</div>
	</body>
</html>
