<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>class6-LMS</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="../css/classstyles.css" rel="stylesheet">
<style type="text/css">					
	*{
		font-family: 'Nanum Gothic', sans-serif;
	}
		
	img
	{
	   border: 0 solid black; /*  일환 ie8 이하에서 border값이 없는 경우 border그려주기에 전체적으로 먹임*/
	}
	
	.style13 {font-size: 13px;  font-family:Nanum Gothic; color:#333333;}
	.style18 {font-size: 13px;  font-family:Nanum Gothic; color:#333333; font-weight: bold; letter-spacing:-0.3pt;}
	.style14 {font-size: 16px;  font-family:Nanum Gothic; color:#FF0000; font-weight: bold; letter-spacing:-0.3pt;}
	.style24 {
		color: #990000;
		font-size: 14px;
		font-weight: bold;
	}
			
	.btn {
	    border: none;
	    color: white;
	    padding: 14px 28px;
	    font-size: 16px;
	    cursor: pointer;
		width: 100px;
		height: 60px;
		background-color: #2196F3;
		} 
	.btn:hover {background: #0b7dda;}
	</style>
			<jsp:include page="${realpath }/layout/Header.jsp" />
				<div class="main" style="overflow: auto; height: 480px;">
					<!-- 메인화면 -->
					<div class="clear"></div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
					  <tr> 
					    <td>
					    	<table width="950" border="0" cellspacing="0" cellpadding="0" align="center">
					      <tr>
					    <td width="950"align="center" valign="top">
					      <br>
					      <br>
					      <img class="img" src="${subpath }/img/class/bigdata/bigdata_01.jpg" width="750" height="400"><br>
					      <img class="img" src="${subpath }/img/class/bigdata/bigdata_02.jpg" width="750" height="400"><br>
					      <img class="img" src="${subpath }/img/class/bigdata/bigdata_03.jpg" width="750" height="400"><br>
					      <img class="img" src="${subpath }/img/class/bigdata/bigdata_04.jpg" width="750" height="400"><br>
					      <img class="img" src="${subpath }/img/class/bigdata/bigdata_05.jpg" width="750" height="400"><br>
					      <img class="img" src="${subpath }/img/class/bigdata/bigdata_06.jpg" width="750" height="400"><br>
					      <img class="img" src="${subpath }/img/class/bigdata/bigdata_07.jpg" width="750" height="400"><br>
					    <br>
					    <br>
					    <table width="882" border="0" cellspacing="0" cellpadding="0" align="center">
					        <tr>
					          <td colspan="2"  height="2" bgcolor="DDDDDD"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="152" align="center" bgcolor="#EEEEEE" class="style18"><b>과정개요</b></td>
					          <td width="82%" class="padding style13">
								본 과정은 직접 해 볼 수 있는 3가지 프로젝트를 중심으로 구성되어 있다. 
								이 프로젝트를 통해 R 프로그래밍의 기초부터 코드 벡터화, 스코핑, S3 기법과 같은 중급 내용까지 다루게 된다. 
								실제로 해 보는 것이 배우는 데 가장 효과적인 방법이다. 
								왜냐하면 상황과는 아무 상관없이 무턱대고 기능들만 외우는 것보다는 실제로 주어진 어떤 문제를 해결하기 위해 기능들을 하나씩 익혀나갈 수 있기 때문이다. 
								단순히 배우는 것이 아니라 직접 실습을 통해 체득하게 될 것이다.					           
					           <br><br>
					           <span class="style24">대부분의 빅데이터 과정이 문법, 통계분석, 시각화 등을 다루고 있는데 이 과정은 철저히 '프로그래밍'에 초점을 맞추어 확실히 R프로그래밍을 통한 빅데이터 분석기법을 배울 수 있다는 것이 특징이다. </span>
					           <br />					        
					           </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%"  height="1" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="30" align="center" bgcolor="#EEEEEE" class="style18"><b>교육기간</b></td>
					          <td width="82%" class="style14 padding">
								[주말반] 2018.05.12~2018.06.09
					          </td>
					        </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="30" align="center" bgcolor="#EEEEEE" class="style18"><b>교육일정</b></td>
					          <td width="82%" class="padding style13">
								[주말반] 총40시간 토 5회 09:30~18:20
					          </td>
					        </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%"  height="1" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="30" align="center" bgcolor="#EEEEEE" class="style18"><b>교육장소</b></td>
					          <td width="82%" class="padding style13">구로센터</td>
					        </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="30" align="center" bgcolor="#EEEEEE" class="style18"><b>교육정원</b></td>
					          <td width="82%" class="padding style13">20명</td>
					        </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="31" align="center" bgcolor="#EEEEEE" class="style18"><b>교육대상</b></td>
					          <td width="82%" class="padding style13">프로그래밍에 대한 기초 지식이 부족하더라도 빅데이터 분석기법 특히 R프로그래밍에 대해 배우고자 하는 분</td>
					        </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="38" align="center" bgcolor="#EEEEEE" class="style18"><b>교육비용</b></td>
					          <td width="82%" class="padding style13"><b>전화 / 온라인문의</b></td>
					        </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%"  height="1" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%"  height="1" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="30" align="center" bgcolor="#EEEEEE" class="style18"><b>문의전화</b></td>
					          <td width="82%" class="padding style13">02-1234-1234</td>
					        </tr>
					        <tr>
					          <td colspan="2"  height="2" bgcolor="DDDDDD"></td>
					        </tr>
					      </table>
					    <br>
					    <br>
					    </td>
					</tr>
					</table>
					</td>
					</tr>
				</table>
					</div><!-- 커리큘럼 tab-2 -->				
					<form action="submitclass.com" method="post" class="submitform">
					<table class="submittable">
						<c:forEach items="${ArticleList}" var="list">
						<tr>
							<td>개강일 : ${list.lecStart }</td>
							<td></td>
							<td>현재 / 총 정원</td>
							<td>oo명 / ${list.classNum }명</td>
							<td align="center" height="60px" rowspan="2">
								<input type="hidden" name="subject" value="빅데이터">
								<button class="submitbtn" type="submit" style="margin-top: 0px;">신청</button>
								<button class="submitbtn" type="button" style="margin-top: 0px;" onclick="location.href = './QnaList.com'">상담</button>
							</td>
						</tr>
						<tr>
							<td>종강일 : ${list.lecEnd }</td>
							<td></td>
							<td class="maxnum" colspan="2">현재 모집 진행중</td>
							<td></td>
						</tr>
						</c:forEach>
					</table><!-- 버튼 -->
					</form>
				<br>
				</div>
				<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>