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
</head>
<body> 
 
<div class="container">
  <h2>Spring MVC</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
    	<form action="${cpath}/board/register }", method="post">
    		<div class="formGroup">
    			<label>제목</label>
    			<input type="text" name="title" class="form-control" />
    		</div>
		    <div class="formGroup">
    			<label>내용</label>
    			<textarea rows="10" name="content" class="form-control"></textarea>
    		</div>
		    <div class="formGroup">
    			<label>작성자</label>
    			<input type="text" name="writer" class="form-control" />
    		</div>
    		<button type="submit" class="btn btn-default btn-sm">등록</button>
    		<button type="reset" class="btn btn-default btn-sm">초기화</button>
    	</form>
    </div>
	<div class="panel-footer">
		<h3>답변형 게시판 만들기</h3>
	</div>
  </div>
</div>
</body>
</html>