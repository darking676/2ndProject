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
	.style18 {font-size: 13px;  font-family:Nanum Gothic; color:#333333; font-weight: bold; letter-spacing:-0.3pt;}
	.style16 {font-size: 16px;  font-family:Nanum Gothic; color:#333333; font-weight: bold; letter-spacing:-0.3pt;}
	.style14 {font-size: 16px;  font-family:Nanum Gothic; color:#FF0000; font-weight: bold; letter-spacing:-0.3pt;}
	
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
				<div class="main" style="overflow: auto; height: 480px;" >
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
					      <img src="${subpath }/img/class/c/c_01.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/c/c_02.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/c/c_03.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/c/c_04.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/c/c_05.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/c/c_06.jpg" width="750" height="400"><br>
					      <img src="${subpath }/img/class/c/c_07.jpg" width="750" height="400"><br>
					      
					    <br>
					    <br>
					    <table width="882" border="0" cellspacing="0" cellpadding="0" align="center">
					        <tr>
					          <td colspan="2"  height="2" bgcolor="DDDDDD"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="102" align="center" bgcolor="#EEEEEE" class="style18"><b>과정개요</b></td>
					          <td width="82%" class="padding style13">본 과정에서는 기초편(입문반) / C 프로그래밍으로 나뉘어져 있으며 같은 기초라고 해도 <br>
            					프로그래밍을 처음 배우는 사람 , 배웠더라도 기초를 튼튼히 하고자하는 분들을 위해 만들어진 교육입니다.<br>
								C언어 기초편에서는 기본 구조를 이해하고, 배열문과 for문을 이용해 현실세계에 주어진 문제들을 해결할 수 있도록 교육은 구성되어 있습니다.<br>
								C프로그래밍에서는 배열과 제어구조에 대한 개념이 잡혀있는 사람이 참여하기에 좋고, 구조적 프로그래밍에 입각하여<br>
								모듈과 구조체 프로그램을 설계하고 검색, 정렬등이 가능한 프로그램을 구현 할 수 있습니다.<br><br>
								최신 시중교재 활용 : 뇌를 자극하는 C프로그래밍(한빛미디어) <br> <br>
					            <br>
					            	이렇게 성장하는 IT분야에 맞추어 가장 많이 활용되는 언어인 JAVA에 대해 기초부터 학습할 수 있도록 구성된 과정입니다. 
					            </td>
					        </tr>
					        <tr>
					          <td width="18%" height="1" bgcolor="#FFFFFF"></td>
					          <td width="82%"  height="1" bgcolor="#EEEEEE"></td>
					        </tr>
					        <tr>
					          <td width="18%" height="30" align="center" bgcolor="#EEEEEE" class="style18"><b>교육기간</b></td>
					          <td width="82%" class="style14 padding">
					[주말반] 2018.04.14~2018.05.19
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
					          <td width="82%" class="padding style13">프로그래밍 지식이 없는 분, 개발자가 되고 싶은데 프로그래밍의 핵심을 빠르게 습득하고자 하는 분</td>
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
					          <td width="18%" height="55" align="center" bgcolor="#EEEEEE" class="style18"><b>전망 및 진출분야 </b></td>
					          <td width="82%" class="padding style13">
					          
							C언어라고 이야기하면 매우 오래된 프로그래밍 언어라는 인식이 강하지만 C언어는 인터프리터방식과 컴파일방식 두 방식을 다 지원하는 언어로써 다양한 IT 산업에 쓰이고 있다. 예를들어 자바프로그래밍으로 프로그램을 작성을 해도 대부분 시스템단에서는 C언어로 컴파일하여 서버에 in or output 값을 가져온 후 결과값을 웹에 뛰어 주는 형태로 결과값이 나온다.
							모바일프로그래밍 분야도 마찬가지이다. 안드로이드 SDK에서 자바API를 사용하지만 더 하부에 받쳐주는 시스템처리는 리눅스 기반의 C언어로 처리된다. 이처럼 우리 생활에 깊이 관여 되어 있는 C언어에 대한 이해를 갖고 기계어와 프로그래밍을 이해하기 시작하면 보다 프로그래밍의 이해를 성장 시킬 수 있다.
							웹 어플리케이션 개발자로서 정부 및 공공기관을 대상으로 SI사업을 하는 IT전문 중소기업, SI 프로젝트 개발 및 유지보수를 담당하는 소프트웨어 관련 회사, Web 및 Mobile 프로그래밍을 개발 운영과 유지보수 업체 등 중소기업 자바기반 기업솔루션 개발 업체 등<br><br>
							  </td>
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
				      <tr bgcolor="#AAAAAA" align="center">
				        <td width="20%" height="40" class="style16">구 분</td>
				        <td width="80%" class="style16">주 요 내 용</td>
				      </tr>
				      <tr>
				        <td align="center" bgcolor="#EEEEEE" class="style18"><strong>C언어의 기본 이해</strong></td>
				          <td width="70%" height="0" class="style13"><b>ㆍ</b>컴파일러 설치<br>
				            <b>ㆍ</b>c언어 프로그램 작성하여 컴파일과 디버깅<br>
				            <b>ㆍ</b>변수와 상수의 선언 및 활용방법</td>
				      </tr>
				      <tr>
				          <td height="1" colspan="2" bgcolor="#BBBBBB"></td>
				        </tr>
				      <tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">C언어에서 제공하는<br>
			            연산자의 사용법 및<br>
			            입출력 함수</td>
			          <td width="70%" height="0" class="style13"><b>ㆍ</b>관계연산자,논리연산자,단항연산자,비트연산자,삼항연산자,연산우선순위<br>
			            <b>ㆍ</b>eacape 문자<br>
			            <b>ㆍ</b>printf함수 , scanf함수<br>
			            <b>ㆍ</b>버퍼의 구조<br>
			            <b>ㆍ</b>다양한 예제 프로그램과 연습문제 풀이</td>
			          </tr>				      
			          <tr>
				          <td height="1" colspan="2" bgcolor="#BBBBBB"></td>
				        </tr>
				      <tr>
				        <td align="center" bgcolor="#EEEEEE" class="style18">if문,Switch문 <br>
            				사용방법 학습</td>
				        <td width="80%" height="107" class="style13"><b>ㆍ</b> IF~문,IF~else문,증첩 if문<br>
				            <b>ㆍ</b>if문을 이용해 직각삼각형 여부 판단하기<br>
				            <b>ㆍ</b>짝수 홀수 판단하기<br>
				            <b>ㆍ</b>진도 위험도 판단하기<br>
				            <b>ㆍ</b>X,Y 좌표가 사분면증 어디에 해당하는지 판단하기<br>
				            <b>ㆍ</b>윤년판단하기</td>
				          </tr>
				      <tr>
				          <td height="1" colspan="2" bgcolor="#BBBBBB"></td>
				        </tr>
				      <tr>
				        <td align="center" bgcolor="#EEEEEE" class="style18">for문을 학습하여 <br>
			            1~N까지의 합을 구하는<br>
			            프로그램 작성</td>
				        <td width="80%" height="119" class="style13"><b>ㆍ</b> For문<br>
				            <b>ㆍ</b>1~N까지 출력하기<br>
				            <b>ㆍ</b>3의 배수만 출력하기<br>
				            <b>ㆍ</b>N부터 1까지 역순으로 출력하기<br>
				            <b>ㆍ</b>Break문 사용하기<br>
				            <b>ㆍ</b>Continue문 사용하기</td>
				      </tr>
				      <tr>
				          <td height="1" colspan="2" bgcolor="#BBBBBB"></td>
				        </tr>
				      <tr>
				          <td align="center" bgcolor="#EEEEEE" class="style18"><p>다중 루프를 활용<br>
				            <span lang="EN-US" xml:lang="EN-US">for</span>문<span lang="EN-US" xml:lang="EN-US">/while</span>문<span lang="EN-US" xml:lang="EN-US">/do~while</span>문 구분하여 사용 </p>          </td>
				          <td width="70%" height="0" class="style13"><b>ㆍ</b>다중 for문<br>
				            <b>ㆍ</b>While문<br>
				            <b>ㆍ</b>Do~While문<br>
				            <b>ㆍ</b>랜덤값 얻기</td>
				          </tr>
				      <tr>
				          <td height="1" colspan="2" bgcolor="#BBBBBB"></td>
				        </tr>
				      <tr>
				        <td align="center" bgcolor="#EEEEEE" class="style18">간단한 게임 만들기 </td>
				        <td width="80%" height="122" class="style13"><b>ㆍ</b> 지금까지 배운 내용으로 간단한 컴퓨터 게임 만들기<br>
				      </tr>
				      <tr>
				          <td height="1" colspan="2" bgcolor="#BBBBBB"></td>
				        </tr>
						<tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">배열 선언하고 읽고 쓰고 검색이나, 최대값을 찾거나 정렬을 이용하여<br>
			            원하는 데이터 얻기 </td>
			          <td width="70%" height="0" class="style13"><b>ㆍ</b>일차원 배열의 선언 및 초기화<br>
			            <b>ㆍ</b>배열의 복사<br>
		   	         <b>ㆍ</b>선형검색<br>
			            <b>ㆍ</b>최고값,최대값 찾기 및 정렬</td>
			          </tr>
			        <tr> 
			          <td height="1" colspan="2" bgcolor="#BBBBBB"></td>
			          </tr>
			        <tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">다차원 배열을 이용해<br>
			            마방진 빙고게임 만들기</td>
			          <td width="70%" height="0" class="style13"><b>ㆍ</b>이차원배열 , 다차원배열 <br>
			            <b>ㆍ</b>행렬연산<br>
			            <b>ㆍ</b>마방진 , 빙고게임 만들기</td>
			          </tr>
			        <tr> 
			          <td height="1" colspan="2" bgcolor="#BBBBBB"></td>
			          </tr>
			        <tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">문자배열 선언하여<br>
			            단어나 문장 입출력하기</td>
			          <td width="70%" height="0" class="style13"><b>ㆍ</b>문자배열의 선언<br>
			            <b>ㆍ</b>문자배열 입출력 방법 , 복사<br>
			            <b>ㆍ</b>진법변환</td>
			          </tr>
			        <tr> 
			          <td height="1" colspan="2" bgcolor="#BBBBBB"></td>
			          </tr>
			        <tr>
			          <td align="center" bgcolor="#EEEEEE" class="style18">문자배열 사용을 지원하는 함수들의<br>
			            사용법 익히기</td>
			          <td width="70%" height="0" class="style13"><b>ㆍ</b>Strcmp , Strcpy , Strlen<br>
			            <b>ㆍ</b>단어검색<br>
			            <b>ㆍ</b>프로그램 만들기</td>
			          </tr>
				      <tr>
				        <td height="1" colspan="2" align="center" bgcolor="#BBBBBB"></td>
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
								<input type="hidden" name="subject" value="씨">
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