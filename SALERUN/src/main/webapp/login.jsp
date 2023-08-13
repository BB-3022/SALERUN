<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
  
  @import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css");

* {
  box-sizing: border-box;
}
body {
  font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum, sans-serif;
  margin: 0;
  padding: 0;
}

  #home-button {
  display: block;
  margin: 50px; /* 버튼 간격 설정 */
  color: #333333; /* 버튼 색상 설정 */
  text-decoration: none;
  cursor: pointer;
  }
  
.wrapper {
  width: 100%;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #ebecf0;
  overflow: hidden;
}
.container {
  border-radius: 10px;
  box-shadow: -5px -5px 10px #fff, 5px 5px 10px #babebc;
  position: absolute;
  width: 768px;
  min-height: 550px;
  overflow: hidden;
}
form {
  background: #ebecf0;
  display: flex;
  flex-direction: column;
  padding: 0 50px;
  height: 100%;
  justify-content: center;
  align-items: center;
}
form input {
  background: #eee;
  padding: 16px;
  margin: 8px 0;
  width: 85%;
  border: 0;
  outline: none;
  border-radius: 20px;
  box-shadow: inset 7px 2px 10px #babebc, inset -5px -5px 12px #fff;
}
button {
  border-radius: 20px;
  border: none;
  outline: none;
  font-size: 12px;
  font-weight: bold;
  padding: 15px 45px;
  margin: 14px;
  letter-spacing: 1px;
  text-transform: uppercase;
  cursor: pointer;
  transition: transform 80ms ease-in;
}
.form_btn {
  box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
}
.form_btn:active {
  box-shadow: inset 1px 1px 2px #babebc, inset -1px -1px 2px #fff;
}
.overlay_btn {
  background-color:#cfe2ff;
  color: #fff;
  box-shadow: -5px -5px 10px #cfe2ff, 5px 5px 8px rgb(94, 170, 227);
}
.sign-in-container {
  position: absolute;
  left: 0;
  width: 50%;
  height: 100%;
  transition: all 0.5s;
}
.sign-up-container {
  position: absolute;
  left: 0;
  width: 50%;
  height: 100%;
  opacity: 0;
  transition: all 0.5s;
}
.overlay-left {
  display: flex;
  flex-direction: column;
  padding: 0 50px;
  justify-content: center;
  align-items: center;
  position: absolute;
  right: 0;
  width: 50%;
  height: 100%;
  opacity: 0;
  background-color: #cfe2ff;
  color: #fff;
  transition: all 0.5s;
}
.overlay-right {
  display: flex;
  flex-direction: column;
  padding: 0 50px;
  justify-content: center;
  align-items: center;
  position: absolute;
  right: 0;
  width: 50%;
  height: 100%;
  background-color: #cfe2ff;
  color: #fff;
  transition: all 0.5s;
}
.container.right-panel-active .sign-in-container {
  transform: translateX(100%);
  opacity: 0;
}
.container.right-panel-active .sign-up-container {
  transform: translateX(100%);
  opacity: 1;
  z-index: 2;
}
.container.right-panel-active .overlay-right {
  transform: translateX(-100%);
  opacity: 0;
}
.container.right-panel-active .overlay-left {
  transform: translateX(-100%);
  opacity: 1;
  z-index: 2;
}
.social-links {
  margin: 20px 0;
}
form h1 {
  font-weight: bold;
  margin: 0;
  color: rgb(114 148 225);
}

p {
  font-size: 16px;
  font-weight: bold;
  letter-spacing: 0.5px;
  margin: 20px 0 30px;
}
span {
  font-size: 12px;
  color: rgb(114 148 225);
  letter-spacing: 0.5px;
  margin-bottom: 10px;
}
.social-links div {
  width: 40px;
  height: 40px;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  margin: 0 5px;
  border-radius: 50%;
  box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
  cursor: pointer;
}
.social-links a {
  color:rgb(114 148 225);
}
.social-links div:active {
  box-shadow: inset 1px 1px 2px #babebc, inset -1px -1px 2px #fff;
}
	input[type="date"]{
		background-color : #eee;
	}
</style>
</head>
<body>

  <h1><a href="Main.html" id="home-button">SaleRun</a></h1>   
    
  <div class="wrapper">
    <div class="container">
      <div class="sign-up-container">

<!-- 회원가입 -->      
        <form action = "JoinService" method = "post">
          <h3 style="color:rgb(114 148 225)">회원정보 입력</h3>
          <div class="social-links">
            <div>
              <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
            </div>
            <div>
              <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
            <div>
            	<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            </div>
          </div>
          <input type="text" placeholder="아이디" name = "mb_id">
          <input type="password" placeholder="비밀번호" name = "mb_pw">
          <input type="text" placeholder="이름" name = "mb_name">
          <input type="text" placeholder="전화번호" name = "mb_tel">
          <input type="date" name = "mb_birth">
          <button class="form_btn" style="color:rgb(114 148 225)">저장</button>
        </form>
      </div>
      <div class="sign-in-container">

<!-- 로그인 -->      
        <form action = "LoginService" method = "post">
          <h1>로그인</h1>
          <div class="social-links">
            <div>
              <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
            </div>
            <div>
              <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
            <div>
            	<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            </div>
          </div>
        <!-- <span>or use your account</span> --> 
          <input type="text" placeholder="아이디" name = "mb_id">
          <input type="password" placeholder="비밀번호" name = "mb_pw">
          <button class="form_btn" style="color:rgb(114 148 225)">로그인</button>
        </form>
      </div>
      <div class="overlay-container">
        <div class="overlay-left">
          <h1>환영합니다 :D</h1>
      <!--    <p>To keep connected with us please login with your personal info</p>--> 
          <button id="signIn" class="overlay_btn">로그인</button>
        </div>
        <div class="overlay-right"> 
          <h1>안녕하세요 :)</h1>
       <!--    <p>Enter your personal details and start journey with us</p>--> 
          <button id="signUp" class="overlay_btn">회원가입</button>
        </div>
      </div>
    </div>
  </div>
  
  <script>
  const signUpBtn = document.getElementById("signUp");
  const signInBtn = document.getElementById("signIn");
  const container = document.querySelector(".container");

  signUpBtn.addEventListener("click", () => {
    container.classList.add("right-panel-active");
  });
  signInBtn.addEventListener("click", () => {
    container.classList.remove("right-panel-active");
  });
  
//홈버튼 JavaScript 코드
  document.getElementById('home-button').addEventListener('click', function() {
    window.scrollTo(0, 0); // 맨 위로 스크롤
    // 또는 window.location.href = '홈페이지 주소'; // 실제 홈페이지로 이동
  });
  

  </script>
</body>
</html>