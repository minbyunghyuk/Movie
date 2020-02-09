<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
    <!-- css 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/semantic.min.css">

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
            max-width: 450px;
        }

    </style>
</head>

<body>
<div class="ui middle aligned center aligned grid">
    <div class="column">
        <h2 class="ui teal image header">
            Movie recommendation system
        </h2>
        <form id="search_form" class="ui large form" action="${pageContext.request.contextPath}/movie/search"
              method="GET">
            <div class="ui stacked segment">
                <div class="field">
                    <div class="ui left icon input">
                        <label for="u_id"></label><input type="text" name="keyword" id="u_id"
                                                         placeholder="User Name (Character count 3)">
                        <input type="submit" value="submit">
                    </div>
                </div>
            </div>
        </form>
        <h2 class="ui teal image header">
            N포털 실시간 최다 예매율 TOP 4
        </h2>
        <table border="1">
            <td>
                <img src="https://movie-phinf.pstatic.net/20200116_23/1579154974413LvtIf_JPEG/movie_image.jpg?type=m99_141_2"
                     alt="클로젯" onerror="this.src='https://ssl.pstatic.net/static/movie/2012/09/dft_img99x141.png'">
            </td>
            <td>
                <img src="https://movie-phinf.pstatic.net/20200103_41/1578032244761ejKMX_JPEG/movie_image.jpg?type=m99_141_2"
                     alt="남산의 부장들" onerror="this.src='https://ssl.pstatic.net/static/movie/2012/09/dft_img99x141.png'">
            </td>
            <td>
                <img src="https://movie-phinf.pstatic.net/20200121_188/1579574685635qE9iF_JPEG/movie_image.jpg?type=m99_141_2"
                     alt="버즈 오브 프레이(할리 퀸의 황홀한 해방)"
                     onerror="this.src='https://ssl.pstatic.net/static/movie/2012/09/dft_img99x141.png'">
            </td>
            <td>
                <img src="https://movie-phinf.pstatic.net/20200122_181/15796574636309Fux2_JPEG/movie_image.jpg?type=m99_141_2"
                     alt="히트맨" onerror="this.src='https://ssl.pstatic.net/static/movie/2012/09/dft_img99x141.png'">
            </td>
            <!--
            <td>
                <img src="https://movie-phinf.pstatic.net/20200115_201/1579055961204pU2PH_JPEG/movie_image.jpg?type=m99_141_2"
                     alt="극장판 미니특공대: 공룡왕 디노"
                     onerror="this.src='https://ssl.pstatic.net/static/movie/2012/09/dft_img99x141.png'">
            </td>
            -->

        </table>


    </div>
</div>

</body>

</html>
