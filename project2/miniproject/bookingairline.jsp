<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>항공 예약</title>
  <link rel="stylesheet" href="<c:url value='/css/pr1.css'/>">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <div id="container" class="container">
    <!-- Include Header -->
    <jsp:include page="header.jsp" />

    <main class="contents">
      <fieldset class="line">
        <section id="korean-air">
          <h2>대한항공</h2>
          <div class="detail">
            <img src="<c:url value='images/koreanairlines.jpg'/>" alt="대한항공 이미지" class="img-fluid" width="400" height="200">
            <div>
              <p><b>출국 일시 :</b> <input type="date"></p>
            </div>
            <p><b>사이트</b> : <a href="https://www.koreanair.com/?hl=ko">https://www.koreanair.com/?hl=ko</a></p>
          </div>
        </section>
      </fieldset>
      <fieldset class="line">
        <section id="asiana-airlines">
          <h2>아시아나 항공</h2>
          <div class="detail">
            <img src="<c:url value='/images/asianaairlines.jpg'/>" alt="아시아나 항공 이미지" class="img-fluid" width="400" height="200">
            <div>
              <p><b>출국 일시 :</b> <input type="date"></p>
            </div>
            <p><b>사이트</b> : <a href="https://flyasiana.com/C/KR/KO/index?site_preference=NORMAL">https://flyasiana.com/C/KR/KO/index?site_preference=NORMAL</a></p>
          </div>
        </section>
      </fieldset>
      <fieldset class="line">
        <section id="jal">
          <h2>Japan Airlines</h2>
          <div class="detail">
            <img src="<c:url value='/images/jalimage.jpg'/>" alt="Japan Airlines 이미지" class="img-fluid" width="400" height="200">
            <div>
              <p><b>출국 일시 :</b> <input type="date"></p>
            </div>
            <p><b>사이트</b> : <a href="https://www.jal.co.jp/kr/ko/?utm_source=google&utm_medium=ppc&utm_campaign=12_kr_jnto_fy23_202308_202403_lf_kr_ko_google_keyword_brand+kw_0_all_conv_brand_JAL+Brand%2BMOD_07-conversion_lf_destination&utm_content=_aor_044_programmatic_keyword_wdg-all_text_3p_multiplatform-desktop-mobile-tablet_0_0_v1_0_0&gad_source=1&gclid=EAIaIQobChMIu_vJy8vshgMVZW4PAh0aZAmKEAAYASAAEgInSfD_BwE&gclsrc=aw.ds">https://www.jal.co.jp/kr/ko/</a></p>
          </div>
        </section>
      </fieldset>
    </main>

    <!-- Include Footer -->
    <jsp:include page="footer.jsp" />
  </div>
</body>
</html>
