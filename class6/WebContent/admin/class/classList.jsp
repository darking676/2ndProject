<%@ page import="java.util.List" %>
<%@ page import="com.admin.model.ClaDto" %><%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 5. 29.
  Time: 오후 5:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        
        table{
            align-content: center;
            width: 700px;
            margin: 0px auto;
            border-collapse: collapse;
        }
        .tr{
            background-color: #cccccc;
            height: 30px;
            margin: auto 0px;
        }
        .tr>th{
            margin: auto 0px;
        }
        tr>td{
            height: 25px;
            border-bottom: #666666 1px solid;
        }
        tr:last-child>td{
            border-bottom: #cccccc 0px solid;
        }
        tr>td:first-child, tr>td:nth-child(2){
            text-align: center;
        }
    </style>
    <title>$Title$</title>
    <jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
    <script language="javascript">
        function delCla(){
            deleteForm.submit();
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
<h1>강의실 리스트</h1>
    <form action="./ClaDeleteAction.com" method="post" name="deleteForm">
        <table class="table">
            <tr class="tr">
                <th>선택</th>
                <th>No</th>
                <th>강의장 이름</th>
                <th>강의장 위치</th>
            </tr>
            <%
                for(int i=0;i<articleList.size();i++){
                    ClaDto list=(ClaDto)articleList.get(i);
            %>
            <tr>
                <td><input type="radio" name="selDel" value="<%=list.getClassNo()%>"></td>
                <td><%=list.getClassNo()%></td>
                <td><%=list.getClassName()%></td>
                <td><%=list.getClassAddress()%></td>
            </tr>
            <%
                }
            %>
            <tr>
                <td style=font-family:Tahoma;font-size:10pt;>
			<%if(nowpage<=1){ %>
			[이전]&nbsp;
			<%}else{ %>
			<a href="./claList.cla?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
			<%} %>
			
			<%for(int a=startpage;a<=endpage;a++){
				if(a==nowpage){%>
				[<%=a %>]
				<%}else{ %>
				<a href="./claList.cla?page=<%=a %>">[<%=a %>]</a>&nbsp;
				<%} %>
			<%} %>
			<%if(nowpage>=maxpage){ %>
			[다음]
			<%}else{ %>
			<a href="./claList.cla?page=<%=nowpage+1 %>">[다음]</a>
			<%} %>
		</td>
            </tr>
            <tr>
                <td><a href="./claWrite.com">입력</a></td>
                <td><a href="javascript:history.go(-1)">수정</a></td>
                <td><a href="javascript:delCla()">삭제</a></td>
            </tr>
        </table>
    </form>
    </div>
    <jsp:include page="${realpath }/layout/Footer.jsp" />
    </div>
	</div>
	</body>
</html>

