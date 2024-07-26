<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>여행사</title>
  <link rel="stylesheet" href="<c:url value='/css/pr1.css'/>">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <div id="container" class="container">
    <!-- Include Header -->
    <jsp:include page="header.jsp" />

    <aside class="d-flex justify-content-end my-3">
      <button type="button" class="btn btn-primary btn-sm me-2" onclick="openLogin()">로그인</button>
      <button type="button" class="btn btn-secondary btn-sm" onclick="openSignup()">회원가입</button>
    </aside>
    <main class="contents">
      <div class="row">
        <div class="col-md-6 mb-4">
          <section id="ToKyo">
            <h2>TOKYO TRIP</h2>
            <div class="detail">
              <img src="<c:url value='/images/tokyo.jpg'/>" alt="도쿄image" class="img-fluid rounded mb-3">
              <p>일본의 중심 동경으로 갑니다.</p>
              <p>바쁜 일상속 도심의 풍경과 도쿄 타워 후지산과 여러가지 일식을 즐겨보세요.</p>
            </div>
          </section>
        </div>
        <div class="col-md-6 mb-4">
          <section id="osaka">
            <h2>OSAKA TRIP</h2>
            <div class="detail">
              <img src="<c:url value='/images/Osaka.jpg'/>" alt="오사카image" class="img-fluid rounded mb-3">
              <p>역사와 문화가 있는 오사카로 갑니다.</p>
              <p>오사카성과 도톤보리 유니버셜 스튜디오 볼거리와 즐길거리가 가득한 문화의 도시</p>
            </div>
          </section>
        </div>
        <div class="col-md-6 mb-4">
          <section id="fukuoka">
            <h2>FUKUOKA TRIP</h2>
            <div class="detail">
              <img src="<c:url value='/images/fukuoka.jpg'/>" alt="후쿠오카image" class="img-fluid rounded mb-3">
              <p>관광의 도시 후쿠오카로 갑니다.</p>
              <p>료칸과 돈코츠라멘의 고장 따뜻한 바다에서 휴양을 즐겨보세요</p>
            </div>
          </section>
        </div>
        <div class="col-md-6 mb-4">
          <section id="sapporo">
            <h2>SAPPORO TRIP</h2>
            <div class="detail">
              <img src="<c:url value='/images/Sapporo.jpg'/>" alt="삿포로image" class="img-fluid rounded mb-3">
              <p>겨울의 도시 삿포로로 갑니다.</p>
              <p>눈꽃 축제와 얼음 낚시 삿포로 맥주의 고장 삿포로로 오세요</p>
            </div>
          </section>
        </div>
      </div>
    </main>

    <!-- Include Footer -->
    <jsp:include page="footer.jsp" />
  </div>
</body>
</html>