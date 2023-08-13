<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/ibs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
   <!-- 상품/혜택 섹션 이미지 크기 수정..실패 --> 
<style>
@import
	url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css")
	;

* {
	box-sizing: border-box;
}

body {
	font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum,
		sans-serif;
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
	background-color: #cfe2ff;
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
	color: rgb(114, 148, 225);
}

p {
	font-size: 16px;
	font-weight: bold;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
	color: rgb(114, 148, 225);
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
	color: rgb(114, 148, 225);
}

.social-links div:active {
	box-shadow: inset 1px 1px 2px #babebc, inset -1px -1px 2px #fff;
}

input[type="date"] {
	background-color: #eee;
}
</style>
  
  <!--  탭섹션 보완 js -->
<script>
  function showTab(tabName) {
    var tabs = document.getElementsByClassName("tab-content");
    for (var i = 0; i < tabs.length; i++) {
      tabs[i].style.display = "none";
    }
    document.getElementById(tabName).style.display = "block";
  }
  
  function showItems(itemsClassName) {
    var items = document.getElementsByClassName(itemsClassName);
    for (var i = 0; i < items.length; i++) {
      items[i].style.display = "block";
    }
  }
</script>
  

</head>

<body>
  
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold">SaleRun</h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <form action="">
                    <div class="input-group" style="display:none;">
                        <input type="text" class="form-control" placeholder="Search for products">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="" class="btn border">
                    <i class="fas fa-heart text-primary"></i>
                    <span class="badge">0</span>
                </a>
                <a href="" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge">0</span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->  
 

    <!-- Navbar Start -->
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h5 class="m-0" style="font-weight: bold;">MENU</h5>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                    <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                        <a href="" class="nav-item nav-link">마이페이지</a>
                        <a href="" class="nav-item nav-link">장바구니</a>
                        <a href="" class="nav-item nav-link">할인상품</a>
                        <a href="" class="nav-item nav-link">할인혜택</a>
                        <a href="" class="nav-item nav-link">전단광고</a>
                    </div>
                </nav>
            </div>
           
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>SaleRun</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0" style="display: none;">
                            <a href="index.html" class="nav-item nav-link active">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Shop</a>
                            <a href="detail.html" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="cart.html" class="dropdown-item">Shopping Cart</a>
                                    <a href="checkout.html" class="dropdown-item">Checkout</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                    </div>
                </nav>
 
	<div class="loginpage">
		<div class="container">
			<div class="sign-up-container">

				<!-- 회원가입 -->
				<form action="JoinService" method="post">
					<h3 style="color: rgb(114, 148, 225)">회원정보 입력</h3>
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
					<input type="text" placeholder="아이디" name="mb_id"> <input type="password" placeholder="비밀번호" name="mb_pw"> <input type="text" placeholder="이름" name="mb_name"> <input type="text" placeholder="전화번호" name="mb_tel"> <input type="date" name="mb_birth">
					<button class="form_btn" style="color: rgb(114, 148, 225)">저장</button>
				</form>
			</div>
			<div class="sign-in-container">

				<!-- 로그인 -->
				<form action="LoginService" method="post">
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
					<input type="text" placeholder="아이디" name="mb_id"> <input type="password" placeholder="비밀번호" name="mb_pw">
					<button class="form_btn" style="color: rgb(114, 148, 225)">로그인</button>
				</form>
			</div>
			<div class="overlay-container">
				<div class="overlay-left">
					<h1>환영합니다 :D</h1>
					<!--    <p>To keep connected with us please login with your personal info</p>-->

					<button id="signIn" class="overlay_btn">로그인</button>
				</div>
				<div class="overlay-right">
					<h1  style = "font-color:white;">안녕하세요 :)</h1>
					<!--    <p>Enter your personal details and start journey with us</p>-->
					<button id="signUp" class="overlay_btn">회원가입</button>
				</div>
			</div>
		</div>
	</div>
	
<!-- joinLoing END -->
  
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
  
  
  <!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="mail/jqBootstrapValidation.min.js"></script>
	<script src="mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
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