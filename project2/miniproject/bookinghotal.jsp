<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>호텔 예약</title>
  <link rel="stylesheet" href="<c:url value='/css/pr1.css'/>">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <div id="container" class="container">
    <!-- Include Header -->
    <jsp:include page="header.jsp" />

    <main class="contents">
      <div>
        <fieldset>
          <section>
            <h2>호텔 예약 사이트</h2>
            <div>
              <table class="table">
                <thead>
                  <tr>
                    <th>호텔 이미지</th>
                    <th>호텔 이름</th>
                    <th>위치</th>
                    <th>사이트</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><img src="<c:url value='/images/tokyohotal 1.jpg'/>" alt="호텔 이미지" class="img-fluid" width="150" height="100"></td>
                    <td>호텔 빌라 폰텐 그랜드 하네다 에어포트</td>
                    <td>2-7-1 Hanedakuko, Oota, Tokyo 144-0041</td>
                    <td><a href="https://www.hvf.jp/haneda-lp/ko/index1.html?utm_source=googleKR&utm_medium=sem&utm_campaign=A-Brand&waad=Q1NNLkYd&gad_source=1&gclid=EAIaIQobChMIysvjocLshgMV1toWBR1FVAAgEAAYASAAEgLP4_D_BwE">사이트 방문</a></td>
                  </tr>
                  <!-- 다른 호텔 정보도 동일하게 추가 -->
                </tbody>
              </table>
            </div>
          </section>
        </fieldset>
      </div>
    </main>

    <!-- Include Footer -->
    <jsp:include page="footer.jsp" />
  </div>
</body>
</html>
