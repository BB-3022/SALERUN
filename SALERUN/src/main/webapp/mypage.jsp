<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>����������</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<style>
.css-mypagebutton {
	display: flex;
	justify-content: space-between;
	width: 120px height: 44px
}

.css-ufulao {
	display: block;
	padding: 0px 10px;
	text-align: center;
	overflow: hidden;
	width: 100%;
	height: 52px;
	border-radius: 3px;
	color: rgb(95, 0, 128);
	background-color: rgb(255, 255, 255);
	border: 1px solid rgb(95, 0, 128);
}

.css-1qirdbn {
	display: block;
	padding: 0px 10px;
	text-align: center;
	overflow: hidden;
	width: 100%;
	height: 52px;
	border-radius: 3px;
	color: rgb(95, 0, 128);
	background-color: rgb(255, 255, 255);
	border: 1px solid rgb(95, 0, 128);
}

.quick-menu {
	position: fixed;
	top: 50%;
	right: 220px;
	transform: translateY(-50%);
	display: flex;
	flex-direction: column;
	background-color: white; /* ������ ������� ���� */
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
	transition: opacity 0.3s;
	opacity: 0;
	border: 1px solid #ddd; /* �׵θ� �߰� */
	width: 70px; /* ���� ���� ���� */
	height: 200px; /* ���� ���� ���� */
}

.quick-menu a {
	display: flex;
	align-items: center; /* �������� ���� ��� ���� */
	color: black;
	text-decoration: none;
	padding: 5px;
	margin: 5px 0;
	transition: background-color 0.3s;
	border-bottom: 1px solid #ddd;
}

.quick-menu a:last-child {
	border-bottom: none; /* ������ �޴��� �� ���� */
}

.quick-menu img {
	width: 50px;
	height: 50px;
	vertical-align: middle;
	margin-right: 0px;
}

.quick-menu a:hover {
	background-color: #444;
}

body {
  font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum, sans-serif;
  margin: 0;
  padding: 0;
}

#home-button {
	display: block;
	margin: 20px; /* ��ư ���� ���� */
	color: #007bff; /* ��ư ���� ���� */
	text-decoration: none;
	cursor: pointer;
}

.navbar {
	position: fixed;
	top: 0;
	right: 0;
	padding: 10px;
	display: flex;
	align-items: center;
}

.navbar a {
	color: #001f3f;
	text-decoration: none;
	margin: 0 10px;
	font-size: 16px;
	font-weight: bold;
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

#wishlist th, #wishlist td {
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
</style>
</head>
<body>

	<div class="quick-menu">
		<a href="#top"><img src="cart.png" alt="Cart Icon"></a> 
		<a href="#categories"><img src="calendar.png" alt="Calendar Icon"></a> 
		<a href="#products"><img src="menu.png" alt="menu Icon"></a>
	</div>
	<p>
		<a href="Main.html" id="home-button">HOME</a>
	</p>


	<div class="navbar">
			<a href="login.jsp">�α���</a> 
			<a href="#">��ٱ���</a> 
			<a href="#">�޴�</a>
	</div>
	<br>
	<br>
	<br>
	<h3 style="margin-left: 50px;">����������</h3>
	<hr>

	<main>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7">
					<div class="card shadow-lg border-0 rounded-lg mt-5">
						<div class="card-header">
							<h3 class="text-center font-weight-light my-4">ȸ������ ����</h3>
						</div>
						
						<form action = "EditService" method = "post">
							<div class="card-body">
								<div class="container"></div>
								<label>��й�ȣ</label><br> <input type="text" class="form-control mb-3" name="mb_pw" /> 
								<label>�̸�</label><br> <input type="text" class="form-control mb-3" name="mb_name" /> 
								<label>��ȭ��ȣ</label><br> <input type="text" class="form-control mb-3" name="mb_tel" /> 
								<label>�������</label><br> <input type="text" class="form-control mb-3" name="mb_birth" />
								<div class="WISHLIST">
									<h3 class="text-center font-weight-light my-4">���ɻ�ǰ ���</h3>
									<div class="card-body">
										<div>
											<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="..."> <label for="formFileLg" class="form-label">���û�ǰ ����</label>
										</div>
										<div class="list-group">
											<table>
												<tbody>
													<tr>
														<td><input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="..."></td>
														<td class="product-image"><img src="product1.jpg" alt="��ǰ1"></td>
														<td>��ǰ 1</td>
														<td>100,000��</td>
														<td><button type="button" class="btn-close" aria-label="Close"></button></td>
													</tr>
													<tr>
														<td><input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="..."></td>
														<td class="product-image"><img src="product1.jpg" alt="��ǰ1"></td>
														<td>��ǰ 1</td>
														<td>100,000��</td>
														<td><button type="button" class="btn-close" aria-label="Close"></button></td>
													</tr>
													<tr>
														<td><input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="..."></td>
														<td class="product-image"><img src="product1.jpg" alt="��ǰ1"></td>
														<td>��ǰ 1</td>
														<td>100,000��</td>
														<td><button type="button" class="btn-close" aria-label="Close"></button></td>
													</tr>
												</tbody>
											</table>
										</div>

									</div>
								</div>
							</div>
							<div class="card shadow-lg border-0 rounded-lg mt-1">
								<div class="card-body">

									<div class="css-mypagebutton">
										<button class="css-ufulao e4nu7ef3" type="button">
											<span class="btn css-nytqmg e4nu7ef1">Ż���ϱ�</span>
										</button>
										<button class="css-1qirdbn e4nu7ef3" type="submit">
											<span class="css-nytqmg e4nu7ef1">ȸ����������</span>
										</button>
									</div>
								</div>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</main>



	<!-- The rest of your existing HTML code goes here -->

	<div id="user-info">
		<!-- ... -->
	</div>

	<div id="wishlist">
		<!-- ... -->
	</div>

	<div id="actions">
		<!-- ... -->
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
  
//Ȩ��ư JavaScript �ڵ�
  document.getElementById('home-button').addEventListener('click', function() {
    window.scrollTo(0, 0); // �� ���� ��ũ��
    // �Ǵ� window.location.href = 'Ȩ������ �ּ�'; // ���� Ȩ�������� �̵�
  });
  

  </script>
</body>
</html>