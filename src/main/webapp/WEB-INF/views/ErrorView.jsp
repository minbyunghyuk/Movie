<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>추천 목록</title>
    <!-- css 가져오기 -->
    <link href="${pageContext.request.contextPath }/assets/css/semantic.min.css" rel="stylesheet" type="text/css">

    <style type="text/css">
        body {
            background-color: #DADADA;
        }

        body > .grid {
            height: 100%;
        }

        .image {
            margin-top: -100px;
        }

        .column {
            max-width: 1000px;
        }

        .view_btn {
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="ui large form">
  <h3 class="ui teal image header"> 존재하지 않는 사용자 입니다.</h3>
</div>

<div class="form-group">
    <a href="${pageContext.request.contextPath}/movie"><button class="ui fluid large teal submit button">Main으로 이동</button></a>
</div>

</body>
</html>


