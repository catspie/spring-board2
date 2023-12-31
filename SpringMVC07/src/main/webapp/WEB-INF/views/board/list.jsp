<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Spring MVC</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http	s://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
		$(document).ready(function(){
			var result = '${result}'; //등록된 게시물의 번호 
			checkModal(result);
			
			$('#regBtn').click(function() {
				location.href="${cpath}/board/register";
			});
		});
		
		function checkModal(result) {
			if(result == ''){
				return;				
			}
			if(parseInt(result)>0){
				// 새로운 다이얼로그 창 띄우기 
				$(".modal-body").html("게시글"+parseInt(result)+"번이 등록되었습니다.");	
			}
			$("#myModal").modal("show");
		}
		
  </script>
</head>
<body> 
 
<div class="container">
  <h2>Spring MVC</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
		<c:if test = "${empty mvo}">
		  <form class="form-inline" action="${cpath}/login/loginProcess" method="post">
		    <div class="form-group">
		      <label for="memId">ID:</label>
		      <input type="text" class="form-control" id="memId" placeholder="Enter memId" name="memId">
		    </div>
		    <div class="form-group">
		      <label for="memPwd">Password:</label>
		      <input type="password" class="form-control" id="memPwd" placeholder="Enter password" name="memPwd">
		    </div>
		    <button type="submit" class="btn btn-default">로그인</button>
		  </form>
	  	</c:if>
		</div>
		<c:if test = "${!empty mvo}">
		  <form class="form-inline" action="${cpath}/login/logoutProcess" method="post">
		    <div class="form-group">
		      <label>${mvo.memName}님 방문을 환영합니다.</label>
		    </div>
		    <button type="submit" class="btn btn-default">로그아웃</button>
		  </form>
	  	</c:if>
		</div>
    </div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
	    	<thead>
	    		<tr>번호</tr>
	    		<tr>제목</tr>
	    		<tr>작성자</tr>
	    		<tr>작성일</tr>
	    		<tr>조회수</tr>
	    	</thead>
	    	<c:forEach var="vo" items="${list}">
	    		<tr>
    				<td>${vo.idx}</td>
		    		<td><a href="${cpath}/board/get?idx=${vo.idx}">${vo.title}</a></td>
		    		<td>${vo.content}</td>
		    		<td>${vo.writer}</td>
		    		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.indate}"/></td>
		    		<td>${vo.count}</td>
	    		</tr>
	    	</c:forEach>
	    	<tr>
	    		<td colspan="5">
	    			<c:if test="${!empty mvo}">
	    				<button type=button" id="regBtn" class="btn btn-sm btn-primary pull-right">글쓰기</button>
	    			</c:if>
	    		</td>
	    	</tr>
    	</table>
    	<!-- 모달 추가 -->
		<div id="myModal" class="modal fade" role="dialog">
  			<div class="modal-dialog">
			    <!-- Modal content-->
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Modal Header</h4>
			      </div>
			      <div class="modal-body">
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
		    </div>
	    </div>
	    <!-- Modal content-->
    </div>
	<div class="panel-footer">
		<h3>답변형 게시판 만들기</h3>	
	</div>
  </div>
</div>
</body>
</html>
