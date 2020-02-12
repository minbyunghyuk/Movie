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
    <div class="ui stacked segment">
        <button class="ui fluid  teal submit button">추천 리스트</button>
        <table class = type11>
            <c:forEach var="Movie" items="${list}" varStatus="Status">
                <c:if test="${Status.count<6}">
                    <td class ="type11"><p>${Status.count}${". "}${Movie.title}</p> ${Movie.link}</td>
                </c:if>
            </c:forEach>
        </table>
        <table class = type11>
            <c:forEach var="Movie" items="${list}" varStatus="Status">
                <c:if test="${Status.count>=6}">
                    <td class ="type11"><p>${Status.count}${". "}${Movie.title}</p> ${Movie.link}</td>
                </c:if>
            </c:forEach>
        </table>
    </div>
</div>


<div class="form-group">
    <a href="${pageContext.request.contextPath}/movie">
        <button class="ui fluid large teal submit button">Main으로 이동</button>
    </a>
</div>

</body>
</html>


