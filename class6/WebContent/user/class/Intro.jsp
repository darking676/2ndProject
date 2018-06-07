<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>class6-LMS</title>
			<jsp:include page="${realpath }/layout/Header.jsp" />
				<div class="main" style="overflow: auto">
					<!-- 메인화면 -->
					<h1 align="center">강의소개</h1>
					
						<div class="clear"></div>
						<img alt="java" src="${subpath }/img/class/java_02.jpg" style="width: 100%;">
							<div id="tab31" class="tabcontent3" style="display:block">
							<div class="table-responsive" style=" border:1px solid #fff;">
						<table class="table    table-striped  "    width="100%" cellspacing=0  > 
		                    <thead >
		                      <tr class="table_header">
		                        <th style=" text-align:center;"> 순번 </th>
								<th style=" text-align:center;"> <b>과정명</th>
								<th style=" text-align:center;"> <b>교육기간</th>
								<th style=" text-align:center;"> <b> 교육장소</th>
								<th style=" text-align:center;"> <b>   </th>
		                      </tr>
		                    </thead>
		                    <tbody id="invoice_table_body">
					<tr >
						<td align=center  > 1      
						<td align=center>  자바개발자과정 
			          <td align="center"  >     
			          [주말반]  2018.05.12~2018.06.09
			              <td align="center">     구로센터 
			              <td align="center">    
			               <a href="${subpath }/user/Java.com" 
			                style="background:#000;color:#ddd;padding:7px 20px;">자세히보기</a>
					</tr>
					</table>
					</div>
				</div>
						<br>
						<img alt="c" src="${subpath }/img/class/c_01.jpg" style="width: 100%;">
							<div id="tab31" class="tabcontent3" style="display:block">
							<div class="table-responsive" style=" border:1px solid #fff;">
						<table class="table    table-striped  "    width="100%" cellspacing=0  > 
		                    <thead >
		                      <tr class="table_header">
		                        <th style=" text-align:center;"> 순번 </th>
								<th style=" text-align:center;"> <b>과정명</th>
								<th style=" text-align:center;"> <b>교육기간</th>
								<th style=" text-align:center;"> <b> 교육장소</th>
								<th style=" text-align:center;"> <b>   </th>
		                      </tr>
		                    </thead>
		                    <tbody id="invoice_table_body">
						<tr >
						<td align=center> 1      
						<td align=center>  C 언어 입문 
			          <td align="center">     
			          [주말반] 2018.04.14~2018.05.19
			              <td align="center">     구로센터 
			              <td align="center">    
			               <a href="${subpath }/user/Clanguage.com" 
			                style="background:#000;color:#ddd;padding:7px 20px;">자세히보기</a>
						</tr>
						</table>
					</div>
				</div>
						<br>
						<img alt="bigdata" src="${subpath }/img/class/bigdata/bigdata_01.jpg" style="width: 100%;">
							<div id="tab31" class="tabcontent3" style="display:block">
							<div class="table-responsive" style=" border:1px solid #fff;">
						<table class="table    table-striped  "    width="100%" cellspacing=0  > 
		                    <thead >
		                      <tr class="table_header">
		                        <th style=" text-align:center;"> 순번 </th>
								<th style=" text-align:center;"> <b>과정명</th>
								<th style=" text-align:center;"> <b>교육기간</th>
								<th style=" text-align:center;"> <b> 교육장소</th>
								<th style=" text-align:center;"> <b>   </th>
		                      </tr>
		                    </thead>
		                    <tbody id="invoice_table_body">
						<tr >
						<td align=center> 1      
						<td align=center>  R프로그래밍을 활용한 빅데이터 분석 
			          <td align="center">     
			          [주말반]  2018.05.12~2018.06.09
			              <td align="center">     구로센터 
			              <td align="center">    
			               <a href="${subpath }/user/Bigdata.com" 
			                style="background:#000;color:#ddd;padding:7px 20px;">자세히보기</a>
						</tr>
						</table>
						</div>
					</div>
						<br>
						<img alt="android" src="${subpath }/img/class/android/android_01.jpg" style="width: 100%;">
							<div id="tab31" class="tabcontent3" style="display:block">
							<div class="table-responsive" style=" border:1px solid #fff;">
						<table class="table    table-striped  "    width="100%" cellspacing=0  > 
		                    <thead >
		                      <tr class="table_header">
		                        <th style=" text-align:center;"> 순번 </th>
								<th style=" text-align:center;"> <b>과정명</th>
								<th style=" text-align:center;"> <b>교육기간</th>
								<th style=" text-align:center;"> <b> 교육장소</th>
								<th style=" text-align:center;"> <b>   </th>
		                      </tr>
		                    </thead>
		                    <tbody id="invoice_table_body">
						<tr >
						<td align=center> 1      
						<td align=center>  안드로이드 프로그래밍(앱개발 기초) 
			          <td align="center">     
			          [주말반] 2018.06.12~2018.07.14
			              <td align="center">     구로센터 
			              <td align="center">    
			               <a href="${subpath }/user/Android.com" 
			                style="background:#000;color:#ddd;padding:7px 20px;">자세히보기</a>
						</tr>
						</table>
						</div>
					</div>						
						<br>
				</div>
				<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>