<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
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
.ol-lg-3 col-6 text-right {
	text-align: right;
}
</style>
</head>

<body>
	<!-- Topbar Start -->
	<div class="container-fluid">
		<div class="row align-items-center py-3 px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a href="" class="text-decoration-none">
					<h1 class="m-0 display-5 font-weight-semi-bold">
						<span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper
					</h1>
				</a>
			</div>

			<div class="col-lg-3 col-6 text-right">
				<a href="" class="btn border"> <i class="fas fa-heart text-primary"></i> <span class="badge">0</span>
				</a> <a href="" class="btn border"> <i class="fas fa-shopping-cart text-primary"></i> <span class="badge">0</span>
				</a> <a href="" class="btn border">Login</a>
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
				<nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
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
			<div class="col-lg-9">
				<nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
					<a href="" class="text-decoration-none d-block d-lg-none">
						<h1 class="m-0 display-5 font-weight-semi-bold">
							<span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper
						</h1>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->

	<!-- Cart Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<div class="col-lg-8 table-responsive mb-5">
				<div class="table-caption" style="font-size: 20px; font-weight: bold;">
					<span>판매처명 A 표기</span>
				</div>
				<table class="table table-bordered text-center mb-0">
					<thead class="bg-secondary text-dark">
						<tr>
							<th colspan="2">Products</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Total</th>
							<th>Remove</th>
						</tr>
					</thead>
					<tbody class="align-middle">
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-3">
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						<div class="d-flex justify-content-between mt-2">
							<h5 class="font-weight-bold">Total</h5>
							<h5 class="font-weight-bold">$160</h5>
						</div>
						<button class="btn btn-block btn-primary my-3 py-3">결제혜택 확인</button>
						<button class="btn btn-block btn-primary my-3 py-3">온라인 구매하기</button>
						<button class="btn btn-block btn-primary my-3 py-3">오프라인 판매처</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<div class="col-lg-8 table-responsive mb-5">
				<div class="table-caption" style="font-size: 20px; font-weight: bold;">
					<span>판매처명 B 표기</span>
				</div>
				<table class="table table-bordered text-center mb-0">
					<thead class="bg-secondary text-dark">
						<tr>
							<th colspan="2">Products</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Total</th>
							<th>Remove</th>
						</tr>
					</thead>
					<tbody class="align-middle">
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
						<tr>
							<td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
							<td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
							<td class="align-middle">$150</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle">$150</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-3">
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						<div class="d-flex justify-content-between mt-2">
							<h5 class="font-weight-bold">Total</h5>
							<h5 class="font-weight-bold">$160</h5>
						</div>
						<button class="btn btn-block btn-primary my-3 py-3">결제혜택 확인</button>
						<button class="btn btn-block btn-primary my-3 py-3">온라인 구매하기</button>
						<button class="btn btn-block btn-primary my-3 py-3">오프라인 판매처</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Cart End -->

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
</body>

</html>