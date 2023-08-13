<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <style>

 body {
  font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum, sans-serif;
  margin: 0;
  padding: 0;
}

  .navbar a:hover {
    color: #005b96; 
  }

  .centered-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

  .product {
    position: absolute;
    top: 200px;
    left: 200px;
  }

 
  .centered-button-container {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh; 
  }

  .centered-button {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
   
    width: 200px;
    height: 60px;
    font-size: 18px;
    
    background-color: #b7e4c7;
    border: none;
    color: white;
  }
  
  .benefit-button {
    position: absolute;
    top: 70%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 200px;
    height: 60px;
    font-size: 18px;
    background-color: #b7e4c7;
    border: none;
    color: white;
  }

        #user-info {
            margin-bottom: 20px;
        }

        #wishlist {
            width: 100%;
            border-collapse: collapse;
        }

        #wishlist th,
        #wishlist td {
            border: 1px solid #ccc;
            padding: 8px;
        }

        #wishlist th {
            background-color: #f2f2f2;
        }

        #actions {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        button {
            padding: 10px 20px;
            background-color: #2291ac;
            color: white;
            border: none;
            cursor: pointer;
            margin: 5px;
        }

        button.cancel {
            background-color: #98a5a8;
        }       
    
      #home-button {
  display: block;
  padding: 100px; /* 버튼 간격 설정 */
  color: #333333; /* 버튼 색상 설정 */
  text-decoration: none;
  cursor: pointer;
  }
    
  a {
  text-decoration : none;} 
  
  h1 {
    display : block;
  margin-top: 50px; /* 버튼 간격 설정 */
  margin-left: 50px; /* 버튼 간격 설정 */
  color: #333333; /* 버튼 색상 설정 */
  text-decoration: none;
  cursor: pointer;
  }
  
  /*탭 넓이 수정/
 /* Custom styles for the tabs */
    #myTab {
      width: 700px; /* Total width */
      margin: 0 auto; /* Center the tabs */
    }

    #myTab .nav-item {
      float: left; /* Float tabs left to position them side by side */
      list-style: none; /* Remove list style */
    }

    /* 탭 상하부 구분 추가*/
     .tabs {
    display: flex;
    background-color: #f1f1f1;
    border-bottom: 1px solid #ccc;
  }
  
  .tab {
    padding: 10px 20px;
    cursor: pointer;
    border-right: 1px solid #ccc;
  }
  
  .tab:last-child {
    border-right: none;
  }
  
  .tab-content {
    display: none;
  }
  
  .horizontal-list {
    display: flex;
    flex-direction: row;
    margin-top: 10px;
  }
  
  .mart-item, .store-item {
    padding: 10px 20px;
    border: 1px solid white;
    cursor: pointer;
    margin-right: 10px;
  }
  
  .tab-image {
    width: 15cm;
    height: auto;
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

   <h1 text-decoration-line: none; color: #333333;><a class="home-button" href="Main.jsp" >SaleRun</a></h1>
   
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
 
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
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            메뉴
          </a>
          <ul class="dropdown-menu" style="background-color: white; min-width: 180px; right: 0; left: auto; padding-top: 10px;">
            <li><a class="dropdown-item" href="Mypage.jsp" style="margin-bottom: 15px;">마이페이지</a></li>
            <li><a class="dropdown-item" href="#" style="margin-bottom: 15px;">장바구니</a></li>
            <li><a class="dropdown-item" href="#" style="margin-bottom: 15px;">상품검색</a></li>
            <li><a class="dropdown-item" href="Benefit.jsp" style="margin-bottom: 15px;">판매처별혜택</a></li>
            <li><a class="dropdown-item" href="#" style="margin-bottom: 0;">마트전단지</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
    <br>
    <br>
    <br>
       <div class="centered-content">
       
    <h4 style="margin-left:50px;">판매처 별 혜택</h4>
    <br>
    <br>
    
<!-- !!!!!!!!!!컴포넌트 > 카드 > 네비게이션 !!!!!!!!!!!!!!!!-->

<!--  Tab 섹션 -->
 <!-- 상위탭 -->

 <ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
      <button class="nav-link active" id="home-tab" onclick="showTab('martTab')" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">대형마트 </button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="profile-tab" onclick="showTab('convenienceStoreTab')" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">편의점</button>
    </li>
  </ul>


<!--  하위탭 섹션 -->
<!--  대형마트 섹션 -->
<div class="tab-content" id="martTab" style="display: none;">
  <div class="horizontal-list">
    <div class="mart-item" onclick="showTab('emart'); showItems('mart-item');">이마트</div>
    <div class="mart-item" onclick="showTab('lotte'); showItems('mart-item');">롯데마트</div>
    <div class="mart-item" onclick="showTab('homeplus'); showItems('mart-item');">홈플러스</div>
  </div>
</div>
<!-- 하위탭클릭시 : 이마트 -->
<div id="emart" class="tab-content" style="display: none;">
  <div class="horizontal-list">
    <div class="mart-item">이마트</div>
    <div class="mart-item" onclick="showTab('lotte'); showItems('mart-item');">롯데마트</div>
    <div class="mart-item" onclick="showTab('homeplus'); showItems('mart-item');">홈플러스</div>
  </div>
  <img class="tab-image" src="img/martCard1.png" alt="이마트 이미지">
</div>

<!-- 하위탭클릭시 : 롯데마트 -->
<div id="lotte" class="tab-content" style="display: none;">
  <div class="horizontal-list">
    <div class="mart-item" onclick="showTab('emart'); showItems('mart-item');">이마트</div>
    <div class="mart-item">롯데마트</div>
    <div class="mart-item" onclick="showTab('homeplus'); showItems('mart-item');">홈플러스</div>
  </div>
  <img class="tab-image" src="card1.jpg" alt="롯데마트 이미지">
</div>

<!-- 하위탭클릭시 : 홈플러스 -->
<div id="homeplus" class="tab-content" style="display: none;">
    <div class="horizontal-list">
    <div class="mart-item" onclick="showTab('emart'); showItems('mart-item');">이마트</div>
    <div class="mart-item" onclick="showTab('lotte'); showItems('mart-item');">롯데마트</div>
    <div class="mart-item">홈플러스</div>
  </div>
  <img class="tab-image" src="card1.jpg" alt="홈플러스 이미지">
</div>


<!-- 편의점 섹션 -->
<div class="tab-content" id="convenienceStoreTab" style="display: none;">
    <div class="horizontal-list">
    <div class="store-item" onclick="showTab('cu'); showItems('store-item');">씨유</div>
    <div class="store-item" onclick="showTab('gs25'); showItems('store-item');">지에스25</div>
    <div class="store-item" onclick="showTab('seven'); showItems('store-item');">세븐일레븐</div>
    </div>
</div>
<!-- 하위탭클릭시 : 씨유 -->
<div id=cu class="tab-content" style="display: none;">
  <div class="horizontal-list">
    <div class="store-item">씨유</div>
    <div class="store-item" onclick="showTab('gs25'); showItems('store-item');">지에스25</div>
    <div class="store-item" onclick="showTab('seven'); showItems('store-item');">세븐일레븐</div>
  </div>
  <img class="tab-image" src="img/CUcard1.png" alt="씨유 이미지">
</div>

<!-- 하위탭클릭시 : 지에스 -->
<div id="gs25" class="tab-content" style="display: none;">
  <div class="horizontal-list">
    <div class="store-item" onclick="showTab('cu'); showItems('store-item');">씨유</div>
    <div class="store-item">지에스25</div>
    <div class="store-item" onclick="showTab('seven'); showItems('store-item');">세븐일레븐</div>
  </div>
  <img class="tab-image" src="card1.jpg" alt="지에스25 이미지">
</div>

<!-- 하위탭클릭시 : 세븐일레븐 -->
<div id="seven" class="tab-content" style="display: none;">
    <div class="horizontal-list">
    <div class="store-item" onclick="showTab('cu'); showItems('store-item');">씨유</div>
    <div class="store-item" onclick="showTab('gs25'); showItems('store-item');">지에스25</div>
    <div class="store-item">세븐일레븐</div>
  </div>
  <img class="tab-image" src="card1.jpg" alt="세븐일레븐 이미지">
</div>

<!-- 홈버튼 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">

//홈버튼 JavaScript 코드
document.getElementById('home-button').addEventListener('click', function() {
  window.scrollTo(0, 0); // 맨 위로 스크롤
  // 또는 window.location.href = '홈페이지 주소'; // 실제 홈페이지로 이동
});
</script>


<!-- 로드했을때 띄울 상태 구현 -->
<script>
  // Function to show the default tabs and content
  function showDefaultTabs() {
    // Select the 대형마트 tab and show its content
    showTab('martTab');
    // Select the 이마트 tab and show its content
    showTab('emart');
    showItems('mart-item'); // Assuming this function shows the items
  }

  // Call the function when the page loads
  window.onload = showDefaultTabs;

  // Function to show default convenience store tab
  function showDefaultConvenienceStoreTab() {
    // Select the 편의점 tab and show its content
    showTab('convenienceStoreTab');
    // Select the 씨유 tab and show its content
    showTab('cu');
    showItems('store-item'); // Assuming this function shows the items
  }

  // Event listener for clicking the 편의점 tab
  document.getElementById('profile-tab').addEventListener('click', showDefaultConvenienceStoreTab);


<!--  편의점 클릭했다가 다시 대형마트 클릭한 경우 보완  -->
// Function to show 이마트 tab content
  function showEmartTabContent() {
    // Show the 이마트 tab content
    showTab('emart');
    showItems('mart-item'); // Assuming this function shows the items
  }

  // Event listener for clicking the 대형마트 tab
  document.getElementById('home-tab').addEventListener('click', showEmartTabContent);
</script>
</body>
</html>
