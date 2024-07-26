<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <div class="container mt-5">
    <div class="panel shadow1">
      <form class="login-form" action="/project/signup" method="post" onsubmit="return checkPassword()">
        <h1 class="text-center mb-4">회원가입</h1>
        <fieldset>
          <div class="mb-3">
            <label for="userName" class="form-label">이름</label>
            <input type="text" class="form-control" id="userName" name="userName" required>
          </div>
          <div class="mb-3">
            <label for="userIdCard" class="form-label">주민번호</label>
            <input type="text" class="form-control" id="userIdCard" name="userIdCard" required>
          </div>
          <div class="mb-3">
            <label for="phone" class="form-label">전화번호</label>
            <input type="text" class="form-control" id="phone" name="phone" required>
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">이메일</label>
            <input type="email" class="form-control" id="email" name="email" required>
          </div>
          <div class="mb-3">
            <label for="address" class="form-label">집주소</label>
            <input type="text" class="form-control" id="address" name="address" required>
          </div>
          <div class="mb-3">
            <label for="id" class="form-label">아이디</label>
            <input type="text" class="form-control" id="id" name="id" required>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password" required>
          </div>
          <div class="mb-3">
            <label for="passwordConfirm" class="form-label">비밀번호 확인</label>
            <input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm" required>
          </div>
        </fieldset>
        <button type="submit" class="btn btn-primary w-100">회원가입</button>
      </form>
    </div>
  </div>
</body>
</html>
