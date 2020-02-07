<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
    <!-- BootStrap CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <title>영화 추천 시스템</title>
</head>
<body>
<h3>영화 추천 시스템</h3>
<div id="content">
    <form id="search_form"
          action="/movie/search" method="GET">
        사용자 이름 :
        <input type="text"  name="keyword" placeholder="검색어를입력하세요">
        <input type="submit" value="찾기">
    </form>

</div>
</body>
</html>

