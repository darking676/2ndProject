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
		
	.style13 {font-size: 13px;  font-family:Nanum Gothic; color:#333333;}
	.style14 {font-size: 16px;  font-family:Nanum Gothic; color:#FF0000; font-weight: bold; letter-spacing:-0.3pt;}
	.style18 {font-size: 13px;  font-family:Nanum Gothic; color:#333333; font-weight: bold; letter-spacing:-0.3pt;}
		
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
					      <img src="${subpath }/img/class/android/android_01.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/android/android_02.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/android/android_03.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/android/android_04.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/android/android_05.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/android/android_06.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/android/android_07.jpg" width="750" height="400"><br>
					    <br>
					    <br>
					    <table width="882" border="0" cellspacing="0" cellpadding="0" align="center">
					        <tr>
					          <td colspan="2"  height="2" bgcolor="DDDDDD"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="102" align="center" bgcolor="#EEEEEE" class="style18"><b>과정개요</b></td>
					          <td width="82%" class="padding style13">
			                      안드로이드 개발 경험이 전혀 헙는 교육생 들도 빠르게 어플리케이션 개발을 할수 있도록 하고 실무에서 혹은 일상생활에서 
			                      바로 사용 할수 있는 자신만의 어플리케이션을 개발 할 수 있고 또한 인드로이드 마켓에 하나 이상 앱을 등록하는 것이 목표이다. 
			                      고급기법인 소셜커머스 구현. 증강현을을 활용한 실전 App개발등 수강생들에게 퀄리티 높은 앱 제작을 지원하고 있다.
					        </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%"  height="1" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="30" align="center" bgcolor="#EEEEEE" class="style18"><b>교육기간</b></td>
					          <td width="82%" class="style14 padding">
					[주말반] 2018.06.12~2018.07.14
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
					          <td width="82%" class="padding style13">안드로이드 기초지식을 가지고 있는 분으로 실제 실습을 통해 자신의 앱을 만들어 활용하고자 하는 분</td>
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
				
			      <table width="882" border="0" cellspacing="4" cellpadding="0" align="center">
			      	<tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			        <tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">1</td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ jdk,sdk 설치 및 개발환경 설정</td>
			        </tr>
			        <tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 안드로이드 스튜디오, 에뮬레이터(지니모션) 설정으로 실행환경 구축</td>
			        </tr>
			        <tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ git 설정으로 클라우드 개발시스템 구축</td>
			        </tr>
			        <tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ mainactivity 를 통한 helloandroid 출력</td>
			        </tr>
			        <tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			        <tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ linearlayout와 속성</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ layout과 buttom을 활용한 화면구현</td>
			        </tr>
			        <tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ view class를 상속받아 자신만의 view를 만들기</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 컴파운드 버튼, 이미지 뷰, 이미지 버튼 활용</td>
			        </tr>
			        <tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			        <tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">2</td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ 안드로이드 기기에서 실행하기</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ manifest.xml 파일 조작하기</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ internet의 개념 및 활용</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 토스트, 대화상자</td>
			        </tr>
			        <tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			        <tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ listview를 이용한 화면구성</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ adapterview</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ gridview 와 webview</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 컴파운드 버튼, 이미지 뷰</td>
			        </tr>
			        <tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			        <tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">3</td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ 뷰플리퍼, 슬라이딩 도어, 그크롤 뷰</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 탭호스트, 액션바, 프래그먼트</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 시계 위젯 만들기</td>
			        </tr><tr>
			         <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 달력 위젯 만들기</td>
			        </tr>
			        <tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			        <tr>
			         <td align="center"></td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ 내장 메모리 파일처리</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 안드로이드 내장 db인 sqlite소개</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ sqlite를 활용해서 application의 현재 상태를 저장하기</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ sqlite를 활용하기</td>
			        </tr>
			        <tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			        <tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">4</td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ 오디오 실행</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 캔버스와 페인트</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 스레드를 활용한 프래그래스바, 시크바</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 전화걸기, 다이얼 호출하기</td>
			        </tr>
			        <tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			        <tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ 구글맵 활용 설정</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 서비스 활용</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 브로드캐스트 리시버</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 콘텐츠 프로바이더</td>
			        </tr>
			        <tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			        <tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">5</td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ 모바일 서버구축을 위한 자바 문법</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 자바 인터페이스와 구현 클래스</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 어플제작을 위한 mvc패턴에 대한 이해 </td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 회원관리(주소록, 게시판, datebase) 어플 제작 실습 (1)</td>
			        </tr>
			         <tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13">4H</td>
			          <td width="80%" height="0" class="style13">▶ 회원관리(주소록, 게시판, datebase) 어플 제작 실습 (2)</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 회원관리(주소록, 게시판, datebase) 어플 제작 실습 (3)</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 회원관리(주소록, 게시판, datebase) 어플 제작 실습 (4)</td>
			        </tr><tr>
			          <td align="center"></td>
			          <td width="10%" height="0" class="style13"></td>
			          <td width="80%" height="0" class="style13">▶ 안드로이드 플레이스토어 등록</td>
			        </tr>
			        <tr>
			          <td height="1" colspan="3" bgcolor="#BBBBBB"></td>
			        </tr>
			      </table>
					</div>
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
								<input type="hidden" name="subject" value="안드">
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
				<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>