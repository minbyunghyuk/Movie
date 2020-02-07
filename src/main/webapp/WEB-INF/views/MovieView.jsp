<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <title>추천 목록</title>
</head>
<body>


<c:forEach var="Movie" items="${list}">
<div style="padding : 30px;">
         <c:if test="${Movie.score >'5'}" >
        <div class="form-group">
            <label>제목</label>
            <span>${Movie.title}</span>
        </div>
        <div class="form-group">
            <label>평점</label>
            <span>${Movie.score}</span>
        </div>
         </c:if>
    </c:forEach>
    <div class="form-group">
        <input type="button" value="목록" onclick='location.href="/movie"'>
    </div>
</div>
</body>
</html>


