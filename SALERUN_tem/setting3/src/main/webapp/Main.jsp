<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
 

 
  .navbar a:hover {
    color: #005b96; /* 호버 시 더 진한 파란색으로 변경 */
  }
  
  /* 슬라이드 추가 */
   .image-slider {
      max-width: 20cm;
      margin: 0 auto;
      overflow: hidden;
    }

    .image-slider img {
      width: 100%;
      height: auto;
      transition: transform 0.5s ease-in-out;
    }
    
    /* 기존 */

  .product {
    position: absolute;
    top: 200px;
    left: 200px;
  }

  /* 수정된 부분 */
  .centered-button-container {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh; /* 화면 높이를 차지하도록 설정 */
  }

  .centered-button {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    /* 버튼 크기를 두 배로 설정 */
    width: 200px;
    height: 60px;
    font-size: 18px;
    /* 버튼 배경색을 연두색으로 변경 */
    background-color: #b7e4c7;
    border: none;
    color: white;
  }
  
  .benefit-button {
    position: absolute;
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%);
    /* 버튼 크기를 두 배로 설정 */
    width: 200px;
    height: 60px;
    font-size: 18px;
    /* 버튼 배경색을 연두색으로 변경 */
    background-color: #b7e4c7;
    border: none;
    color: white;
  }

 h1 {
    display : block;
  margin-top: 30px; /* 버튼 간격 설정 */
  margin-left: 50px; /* 버튼 간격 설정 */
  color: #333333; /* 버튼 색상 설정 */
  text-decoration: none;
  cursor: pointer;
  }

  a {
  text-decoration : none;} 
  
   /* Custom styles for the buttons */
    .centered-button-container .btn:hover {
      background-color: white; /* Change background color on hover */
      color: #333333; /* Change text color on hover */
    }
   
</style>

 <!-- 슬라이드  -->

  <script>
    $(document).ready(function(){
      $('.image-slider').carousel({
        interval: 3000 // 3 seconds
      });
    });
  </script>
  
</head>
<body>

<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
 <h1><a class="navbar-brand" href="Main.jsp">SaleRun</a></h1> 
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
      <ul class="navbar-nav ms-auto" style="display: flex; gap: 10px;">
        <li class="nav-item">
          <a href="Login.jsp" class="nav-link">로그인</a>
        </li>
        <li class="nav-item">
          <a href="Login.jsp" class="nav-link">회원가입</a>
        </li>
        <li class="nav-itemdropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            메뉴
          </a>
          <ul class="dropdown-menu" style="background-color: white; min-width: 180px; right: 0; left: auto; padding-top: 10px;">
            <li><a class="dropdown-item" href="Mypage.jsp" style="margin-bottom: 15px;">마이페이지</a></li>
            <li><a class="dropdown-item" href="Cart.jsp" style="margin-bottom: 15px;">장바구니</a></li>
            <li><a class="dropdown-item" href="SearchProduct.jsp" style="margin-bottom: 15px;">상품검색</a></li>
            <li><a class="dropdown-item" href="Benefit.jsp" style="margin-bottom: 15px;">판매처별혜택</a></li>
            <li><a class="dropdown-item" href="#" style="margin-bottom: 0;">마트전단지</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>


<!--   슬라이드 시작 -->

<div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-12">
        <div id="imageSlider" class="carousel slide image-slider" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="img/KoreaCow.png" alt="card1.jpg">
            </div>
            <div class="carousel-item">
              <img src="img/martCard1.png" alt="Image 2">
            </div>
            <div class="carousel-item">
              <img src="img/KoreaCow.png" alt="Image 3">
            </div>
            <!-- Add more carousel items as needed -->
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--  슬라이드 끝 -->

 <div class="centered-button-container">
  <button type="button" class="btn btn-primary centered-button" id="liveToastBtn"><a href="SearchProduct.jsp" style="color: white;">할인상품 검색</button>
  <button type="button" class="btn btn-primary benefit-button" id="benefitsBtn"><a href="Benefit.jsp" style="color: white;">판매처 별 혜택</a></button>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">

//JavaScript 코드
document.getElementById('home-button').addEventListener('click', function() {
  window.scrollTo(0, 0); // 맨 위로 스크롤
  // 또는 window.location.href = '홈페이지 주소'; // 실제 홈페이지로 이동
});
</script>
</body>
</html>
