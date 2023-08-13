<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
<link rel="stylesheet" href="styles.css">
<title>EShopper - Bootstrap Shop Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<style>
body {
	font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum,
		sans-serif;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
}

.text-center {
	text-align: center;
}

.font-weight-light {
	font-weight: lighter;
}

.my-4 {
	margin-top: 1rem;
	margin-bottom: 1rem;
}

.form-control {
	display: block;
	width: 100%;
	height: 40px;
	padding: 6px 12px;
	font-size: 16px;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: 0.25rem;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.WISHLIST {
	margin-top: 20px;
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
}

th {
	background-color: #f2f2f2;
}

.card {
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	border: none;
	border-radius: 5px;
	margin-top: 10px;
}

.card-body {
	padding: 20px;
}

.css-mypagebutton {
	display: flex;
	justify-content: space-between;
}

.css-ufulao, .css-1qirdbn {
	display: block;
	padding: 0 10px;
	text-align: center;
	overflow: hidden;
	width: 100%;
	height: 52px;
	border-radius: 3px;


	border: 1px solid rgb(95, 0, 128);
}

.deleteAll {
	background-color: #D19C97;
	border: none;
	padding: 5px 10px;
	color: white;
}

.css-mypagebutton {
	text-align: center;
}

.css-mypagebutton button {
	margin: 5px 20px; /* 여기서 첫 번째 값은 위/아래 여백, 두 번째 값은 좌/우 여백을 나타냅니다. */
	padding: 5px 10px;
}

.css-mypagebutton .css-nytqmg {
	font-size: 20x;
	font-weight : bold;
}
</style>
<!-- 부트스트랩CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>

<body>


	<!-- Topbar Start -->
	<div class="container-fluid">
		<div class="row bg-secondary py-2 px-xl-5">
			<div class="col-lg-6 d-none d-lg-block">
				<div class="d-inline-flex align-items-center">
					<a class="text-dark" href="">FAQs</a> <span class="text-muted px-2">|</span> <a class="text-dark" href="">Help</a> <span class="text-muted px-2">|</span> <a class="text-dark" href="">Support</a>
				</div>
			</div>
			<div class="col-lg-6 text-center text-lg-right">
				<div class="d-inline-flex align-items-center">
					<a class="text-dark px-2" href=""> <i class="fab fa-facebook-f"></i>
					</a> <a class="text-dark px-2" href=""> <i class="fab fa-twitter"></i>
					</a> <a class="text-dark px-2" href=""> <i class="fab fa-linkedin-in"></i>
					</a> <a class="text-dark px-2" href=""> <i class="fab fa-instagram"></i>
					</a> <a class="text-dark pl-2" href=""> <i class="fab fa-youtube"></i>
					</a>
				</div>
			</div>
		</div>
		<div class="row align-items-center py-3 px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a href="" class="text-decoration-none">
					<h1 class="m-0 display-5 font-weight-semi-bold">
						<span class="text-primary font-weight-bold border px-3 mr-1">E</span> Shopper
					</h1>
				</a>
			</div>
			<div class="col-lg-3 col-6 text-right">
				<a href="" class="btn border"> <i class="fas fa-heart text-primary"></i> <span class="badge">0</span>
				</a> <a href="" class="btn border"> <i class="fas fa-shopping-cart text-primary"></i> <span class="badge">0</span>
				</a>
			</div>
		</div>
	</div>
	<!-- Topbar End -->

	<!-- Navbar Start -->
	<div class="container-fluid">
		<div class="row border-top px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
					<h6 class="m-0">Categories</h6> <i class="fa fa-angle-down text-dark"></i>
				</a>
				<nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1000; background-color: white;">

					<div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
						<div class="nav-item dropdown">
							<a href="#" class="nav-link" data-toggle="dropdown">Dresses <i class="fa fa-angle-down float-right mt-1"></i></a>
							<div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
								<a href="" class="dropdown-item">Men's Dresses</a> <a href="" class="dropdown-item">Women's Dresses</a> <a href="" class="dropdown-item">Baby's Dresses</a>
							</div>
						</div>
						<a href="" class="nav-item nav-link">Shirts</a> <a href="" class="nav-item nav-link">Jeans</a> <a href="" class="nav-item nav-link">Swimwear</a> <a href="" class="nav-item nav-link">Sleepwear</a> <a href="" class="nav-item nav-link">Sportswear</a> <a href="" class="nav-item nav-link">Jumpsuits</a> <a href="" class="nav-item nav-link">Blazers</a> <a href="" class="nav-item nav-link">Jackets</a> <a href="" class="nav-item nav-link">Shoes</a>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->

	<!-- mypage START -->
	<div class="container">
		<h3 class="text-center font-weight-light my-4">회원정보 수정</h3>
		<form action="EditService" method="post">
			<label for="mb_pw">비밀번호</label> <input type="text" class="form-control mb-3" name="mb_pw"> 
			<label for="mb_name">이름</label> <input type="text" class="form-control mb-3" name="mb_name"> 
			<label for="mb_tel">전화번호</label> <input type="text" class="form-control mb-3" name="mb_tel"> 
			<label for="mb_birth">생년월일</label> <input type="text" class="form-control mb-3" name="mb_birth"> <br>
			<hr width="100%" color="#dee2e6" size="50">
			<br>
			<div class="WISHLIST">
				<div>
					<h3 class="text-center font-weight-light my-4">관심상품 목록</h3>
				</div>
				<div>
					<button class="deleteAll" style="margin-left: 85%">전체삭제</button>
				</div>
				<br>
				<div class="list-group">
					<table class="table table-bordered text-center mb-0">
						<thead class="bg-secondary text-dark">
							<tr>
								<th class="align-middle" style="vertical-align: top;"><input type="checkbox"></th>
								<th>Products</th>
								<th>Price</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody class="align-middle">
							<tr>
								<td class="align-middle" style="vertical-align: top;"><input type="checkbox"></td>
								<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
								<td class="align-middle">$150</td>
								<td class="align-middle"><button class="btn btn-sm">
										<i class="fa fa-times"></i>
									</button></td>

							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="card-body">
				<div class="css-mypagebutton">
					<button class="css-ufulao e4nu7ef3" type="button" id="deleteButton">
						<span class="btn css-nytqmg e4nu7ef1">탈퇴하기</span>
					</button>
					<button class="css-1qirdbn e4nu7ef3" type="button" id="editButton">
						<span class="css-nytqmg e4nu7ef1">회원정보수정</span>
					</button>
				</div>
			</div>
		</form>
	</div>

	<!-- mypage END -->

	<script>
	//홈버튼 JavaScript 코드
	  document.getElementById('home-button').addEventListener('click', function() {
	    window.scrollTo(0, 0); // 맨 위로 스크롤
	    // 또는 window.location.href = '홈페이지 주소'; // 실제 홈페이지로 이동
	  });
    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js">
    </script>
    
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="mail/jqBootstrapValidation.min.js"></script>
	<script src="mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>