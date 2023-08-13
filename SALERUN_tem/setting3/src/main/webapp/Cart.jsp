<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    
    <style>
    
    /*  �׺��   */
      .navbar a:hover {
    color: #005b96; 
  }

  .centered-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
    
          #home-button {
  display: block;
  padding: 100px; /* ��ư ���� ���� */
  color: #333333; /* ��ư ���� ���� */
  text-decoration: none;
  cursor: pointer;
  }
    
  a {
  text-decoration : none;} 
  
  h1 {
    display : block;
  margin-top: 50px; /* ��ư ���� ���� */
  margin-left: 50px; /* ��ư ���� ���� */
  color: #333333; /* ��ư ���� ���� */
  text-decoration: none;
  cursor: pointer;
  }

 body {
  font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum, sans-serif;
  margin: 0;
  padding: 0;
}
  
    /* ��ٱ��� ���� css */
* {
  box-sizing: border-box;
}

p,
span {
  margin: 0;
}

a {
  color: black;
}

img {
  display: block;
  width: 80%;
  height: 80px;
  margin: auto;
}

.cart {
  width: 80%;
  margin: auto;
  padding: 30px;
}

.cart ul {
  background-color: whitesmoke;
  padding: 30px;
  margin-bottom: 50px;
  border: whitesmoke solid 1px;
  border-radius: 5px;
  font-size: 13px;
  font-weight: 300;
}

.cart ul :first-child {
  color: rgb(222, 82, 82);
}

table {
  border-top: solid 1.5px black;
  border-collapse: collapse;
  width: 100%;
  font-size: 14px;
}

thead {
  text-align: center;
  font-weight: bold;
}

tbody {
  font-size: 12px;
}

td {
  padding: 15px 0px;
  border-bottom: 1px solid lightgrey;
}

.cart__list__detail :nth-child(3) {
  vertical-align: top;
}

.cart__list__detail :nth-child(3) a {
  font-size: 12px;
}

.cart__list__detail :nth-child(3) p {
  margin-top: 6px;
  font-weight: bold;
}

.cart__list__smartstore {
  font-size: 12px;
  color: gray;
}

.cart__list__option p {
  margin-bottom: 25px;
  position: relative;
}

.cart__list__option p::after {
  content: "";
  width: 90%;
  height: 1px;
  background-color: lightgrey;
  left: 0px;
  top: 25px;
  position: absolute;
}


.cart__list__detail :nth-child(4),
.cart__list__detail :nth-child(5),
.cart__list__detail :nth-child(6) {
  border-left: 2px solid whitesmoke;
}

.cart__list__detail :nth-child(5),
.cart__list__detail :nth-child(6) {
  text-align: center;
}

.cart__list__detail :nth-child(5) button {
  background-color: rgb(222, 82, 82);
  color: white;
  border: none;
  border-radius: 5px;
  padding: 4px 8px;
  font-size: 12px;
  margin-top: 5px;
}

.price {
  font-weight: bold;
}

.cart__mainbtns {
  width: 420px;
  height: 200px;
  padding-top: 40px;
  display: block;
  margin: auto;
}

.cart__bigorderbtn {
  width: 200px;
  height: 50px;
  font-size: 16px;
  margin: auto;
  border-radius: 5px;
}

.cart__bigorderbtn.left {
  background-color: white;
  border: 1px lightgray solid;
}

.cart__bigorderbtn.right {
  background-color: #cfe2ff;
  color: #333333;
  border: none;
  margin:auto;
  
}

.cart__total {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            border-top: 1px solid lightgrey;
            font-weight: bold;
        }


    </style>
</head>
<body>


<!--      �׺��     -->
  <h1 text-decoration-line: none; color: #333333;><a class="home-button" href="Main.jsp" >SaleRun</a></h1>
   
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
 
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
      <ul class="navbar-nav ms-auto" style="display: flex; gap: 10px;">
        <li class="nav-item">
          <a href="Main.jsp" class="nav-link">�α׾ƿ�</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            �޴�
          </a>
          <ul class="dropdown-menu" style="background-color: white; min-width: 180px; right: 0; left: auto; padding-top: 10px;">
            <li><a class="dropdown-item" href="Mypage.jsp" style="margin-bottom: 15px;">����������</a></li>
            <li><a class="dropdown-item" href="#" style="margin-bottom: 15px;">��ٱ���</a></li>
            <li><a class="dropdown-item" href="#" style="margin-bottom: 15px;">��ǰ�˻�</a></li>
            <li><a class="dropdown-item" href="Benefit.jsp" style="margin-bottom: 15px;">�Ǹ�ó������</a></li>
            <li><a class="dropdown-item" href="#" style="margin-bottom: 0;">��Ʈ������</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
    <br>
    <br>
    <br>
     <!--  <div class="centered-content">  -->
       
    <h1 style="margin-left:150px;">��ٱ���</h1>
    
<!--       ��ٱ��� ������        -->

        <section class="cart">
      <!--     �ȳ�����    -->
            <div class="cart__information">
                <ul>
                    <li>��ٱ��� ��ǰ�� �ִ� 30�ϰ� ����˴ϴ�.</li>
                    <li>����, �ɼ� �� ������ ����� ��� �ֹ��� �Ұ��� �� �ֽ��ϴ�.</li>
                </ul>
            </div>
            
      <!--    ��ٱ��� ��ü     -->
            <table class="cart__list">
                <form id="cart__list">
                    <thead>
                        <tr>
                            <td style="width: 10%;"><input type="checkbox"></td>
                            <td style="width: 20%;"></td>
                            <td style="width: 30%;">��ǰ��</td>
                            <td style="width: 10%;">����</td>
                            <td style="width: 30%;" colspan="2">��ǰ����</td>
                        </tr>
                    </thead>
                    
                    
                    <tbody>
                    <!--  ��ǰ1 -->
                        <tr class="cart__list__detail">
                            <td ><input type="checkbox"></td>
                            <td ><img src="img5.jpg" alt="�Ŷ��"></td>
                            <td><a href="#">Ȩ�÷���</a>
                                <p>�Ŷ�� 140g 1����</p>
                            </td>
                            <td class="cart__list__option" style="text-align: right;">1��</td>
                            <td style="text-align: right;"><span class="price">1,000��</span></td>
                        </tr>
                    <!--  ��ǰ2 -->    
                        <tr class="cart__list__detail">
                            <td ><input type="checkbox"></td>
                            <td>
                                <img src="img6.jpg" alt="�Ŷ�� ��">
                            </td>
                            <td ><a href="#">�̸�Ʈ</a>
                                <p>(���)�Ŷ�� �� 140g 4����</p>
                            </td>
                            <td class="cart__list__option" style="text-align: right;">3��</td>
                            <td style="text-align: right;"><span class="price">4,500��</span></td>
                        </tr>
                   
                    <!--  ��ǰ3 -->
                        <tr class="cart__list__detail">
                            <td><input type="checkbox"></td>
                            <td><img src="img5.jpg" alt="�Ŷ��"></td>
                            <td><a href="#">Ȩ�÷���</a>
                                <p>�Ŷ�� 140g 1����</p>
                            </td>
                            <td class="cart__list__option" style="text-align: right;">3��</td>
                            <td style="text-align: right;"><span class="price">1,000��</span></td>
                        </tr>
                    <!--  ��ǰ4 -->    
                        <tr class="cart__list__detail">
                            <td><input type="checkbox"></td>
                            <td>
                                <img src="img6.jpg" alt="�Ŷ�� ��">
                            </td>
                            <td 
                            ><a href="#">�̸�Ʈ</a>
                                <p>(���)�Ŷ�� �� 140g 4����</p>
                            </td>
                            <td class="cart__list__option" style="text-align: right;">2��</td>
                            <td style="text-align: right;"><span class="price">4,500��</span></td>
                        </tr>
                    </tbody>
              </form>
            </table>
            
            <!--     �Ұ� 1   -->
           
              <div class="cart__total">
                <span>�Ѱ�:</span>
                <span id="totalPrice" class="price">0��</span>
              </div>
           
            <!--     �Ѱ�   -->
            
            
          </section>
           
           
            <div class="cart__mainbtns">
               <a href="Main.jsp"><button class="cart__bigorderbtn left">���</button></a> 
                <button class="cart__bigorderbtn right">��������</button>
          
          
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
        
//�׺�� 
       //Ȩ��ư JavaScript �ڵ�
document.getElementById('home-button').addEventListener('click', function() {
  window.scrollTo(0, 0); // �� ���� ��ũ��
  // �Ǵ� window.location.href = 'Ȩ������ �ּ�'; // ���� Ȩ�������� �̵�
});



//��ٱ���(����)

              
              //��ٱ��� �Ұ��߰� (�̼�)
<!-- jQuery ���̺귯�� �߰� -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
$(document).ready(function() {

    // üũ�ڽ� ���� �� �̺�Ʈ ó��
    $('input[type="checkbox"]').on('change', function() {
        updateTotalPrice();
    });

    // �ʱ� �Ұ� ���
    updateTotalPrice();

    // �Ұ� ������Ʈ �Լ�
    function updateTotalPrice() {
        var totalPrice = 0;

        // ���õ� üũ�ڽ��� �� Ȯ��
        $('input[type="checkbox"]:checked').each(function() {
            var priceText = $(this).closest('tr').find('.price').text();
            var price = parseInt(priceText.replace(/[^0-9]/g, '')); // ���ݿ��� ���ڸ� ����
            totalPrice += price;
        });

        // ���� �Ұ踦 ȭ�鿡 ������Ʈ
        $('#totalPrice').text('�Ұ�: ' + totalPrice.toLocaleString() + '��');
    }
});


</script>









</body>
</html> 