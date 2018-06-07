<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
			<jsp:include page="${realpath }/layout/Header.jsp" />
			<style type="text/css">
					/* 공지사항 */
			.column{
				display: inline;
			    float: left;
			    width: 300px;
				margin: 0px 8px;
				height: 150px;
			}
			.notice, .advice{
				background-color: #F7EBD6;
				margin-left: 10px;
				width: 300px;
				height: 140px;
			}
			td>a, td>a{
				text-decoration: none;
				color: black;
				font-size: 11px;
				line-height: -20px;
			}
			td:FIRST-CHILD{
				width: 20px;
				height: 18px;
				margin-left: 10px;
				
			}
			td{
				border-bottom: #968973 dotted 1px;
			}
			table{
				
				margin-top: -20px;
				width: 300px;
			}
			tr{
				
				height: 20px;
				margin-bottom: -20px;
				margin-top: 0px;
				width: 300px;
			}
			tr>td:last-child{
				text-align: right;
			}
			h3{
				margin-left: 10px;
				line-height: 30px;
			}
			h3>a{
				text-decoration: none;
				color: black;
				
			}
			</style>
				<div class="main" style="overflow: auto">
					<!-- main contents Start -->
					<div class="slideshow-container" style="margin: 20px 10px 10px 20px">
						<div class="mySlides fade">
						  <img src="${subpath }/img/main/MainPage_Banner_01.JPG" style="width:100%">
						</div>
						<div class="mySlides fade">
						  <img src="${subpath }/img/main/MainPage_Banner_02.JPG" style="width:100%">
						</div>
						<div class="mySlides fade">
						  <img src="${subpath }/img/main/MainPage_Banner_03.JPG" style="width:100%">
						</div>
						<div class="mySlides fade">
						  <img src="${subpath }/img/main/MainPage_Banner_04.JPG" style="width:100%">
						</div>
						<div class="mySlides fade">
						  <img src="${subpath }/img/main/MainPage_Banner_05.JPG" style="width:100%">
						</div>
						<div class="mySlides fade">
						  <img src="${subpath }/img/main/MainPage_Banner_06.JPG" style="width:100%">
						</div>
					</div>
					<div style="text-align:center">
					  <span class="dot" onclick="currentSlide(1)"></span> 
					  <span class="dot" onclick="currentSlide(2)"></span> 
					  <span class="dot" onclick="currentSlide(3)"></span> 
					  <span class="dot" onclick="currentSlide(4)"></span> 
					  <span class="dot" onclick="currentSlide(5)"></span> 
					  <span class="dot" onclick="currentSlide(6)"></span> 
					</div>
					<!-- main contents End -->
					<!-- main bbs start -->
					<div class="column">
					    <div class="notice">
					        <h3><a href="../user/BbsList.com">공지사항</a></h3>
					        <table>
								<c:forEach items="${mainbbs }" var="bbs" begin="0" end="3"> 		        
						          <tr>
						            <td align="left"><a href="../user/BbsDetail.com?idx=${bbs.bbsNo }">●</a></td>
						            <td align="left" style='width:180px;overflow:hidden;text-overflow:ellipsis;'><a href="../user/BbsDetail.com?idx=${bbs.bbsNo }">${bbs.bbsName }</a></td>
						            <td align="right"><a href="../user/BbsDetail.com?idx=${bbs.bbsNo }">${bbs.bbsDate }</a></td>
						          </tr>
					            </c:forEach>
					        </table>
						</div>
					</div>
					<div class="column">
					    <div class="advice">
					        <h3><a href="../user/QnaList.com">상담게시판</a></h3>
					        <table>
								<c:forEach items="${mainqna }" var="bbsq" begin="0" end="3"> 
						          <tr>
						          	<td align="left"><a href="../user/QnaPw.com?idx=${bbsq.qnaNo }">●</a></td>
						          	<td align="left" style='width:180px;overflow:hidden;text-overflow:ellipsis;'><a href="../user/QnaPw.com?idx=${bbsq.qnaNo }">${bbsq.qnaName }</a></td>
						          	<td align="right"><a href="../user/QnaPw.com?idx=${bbsq.qnaNo }">${bbsq.qnaIpD }</a></td>
						          </tr>
					           </c:forEach>
							</table>
						</div>
					</div>					
				    <div class="column">
				    	<div class="crad">
				     		<a href="http://www.moel.go.kr/index.do" target=blank> 
				     			<img src="../img/main/link1.jpg"  height="70" width="300"/>
				     		</a>
				     		<a href="https://www.bit.kr/" target=blank> 
				     			<img src="../img/main/link2.jpg"  height="70" width="300"/>
				     		</a>
			     		</div>
				     </div>
					<!-- main bbs end -->
				</div>					
			<jsp:include page="${realpath }/layout/Footer.jsp" />
		<jsp:include page="${realpath }/layout/slide.jsp" />
	</body>
</html>