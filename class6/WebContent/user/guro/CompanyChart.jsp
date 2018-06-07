<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
			<jsp:include page="${realpath }/layout/Header.jsp" />
				<div class="main" style="overflow: auto" >
					<div class="clear"></div>
					<div class="grid_12 content">
						<h3>조직도</h3>
						<img alt="chart" src="${subpath }/img/guro/chart/chart_01.jpg">
						<img style="width: 800px;" alt="chart" src="${subpath }/img/guro/chart/chart_02.jpg">
						
					</div>
				</div>
				<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>