<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Search</title>
    <style>
        body {
            font-family: "Noto Sans", "malgun gothic", "AppleGothic", "dotum", "sans-serif";
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        header {
            background-color: #ddd;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .container {
            max-width: 800px;
            margin: auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0px 0px 10px rgba(49, 141, 152, 0.1);
            border-radius: 5px;
            margin-top: 30px;
        }
        .category {
            display: flex;
            justify-content: center;
            background-color: #ddd;
            padding: 10px 0;
            border-radius: 5px;
        }

        .category__item {
            padding: 10px;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s;
            border-radius: 5px;
            margin: 0 5px;
            background-color: #0f000043;
            border: 1px solid #ddd;
        }

        .category__item:hover {
            background-color: #160101;
        }
        .search-box {
            display: flex;
            margin-bottom: 20px;
            margin-top: 20px;
        }

        .search-box input[type="text"] {
            flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px 0 0 5px;
            outline: none;
        }

        .search-box button {
            padding: 10px 20px;
            background-color: #222;
            color: white;
            border: none;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
        }

        .product-list {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .product {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 5px;
        }

        .product img {
            max-width: 100%;
            height: auto;
        }

        .product-title {
            font-size: 16px;
            margin: 10px 0;
        }

        .product-price {
            font-size: 18px;
            color: #bb1515;
        }
        .product-title  {
            color: black; /* ��ũ �ؽ�Ʈ�� ������ ���������� ���� */
            text-underline-offset: black; /* ���� ��Ÿ�� ���� */
            /* ���ϴ� �ٸ� ��Ÿ���� �߰��� ������ �� �ֽ��ϴ�. */
        }
      
        .logo-image {
    display: inline-block;
    vertical-align: middle;
    margin-right: 10px; /* ���� ������ ���� */
}

.logo-image__img {
    width: 80px; /* �̹��� �ʺ� ���� */
    height: 50px; /* �̹��� ���� ���� */
    object-fit: cover;
}

.pagination {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

.page-link {
    padding: 5px 10px;
    margin: 0 5px;
    border: 1px solid #ddd;
    border-radius: 3px;
    text-decoration: none;
    color: #333;
    transition: background-color 0.3s;
}

.page-link:hover {
    background-color: #f2f2f2;
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

    </style>
</head>
<body>
    <header>
        <h1></h1>
        
    </header>

    <div class="quick-menu">
        <a href="cart.jsp"><img src="img/quickmenulogo/cart.png" alt="Cart Icon"></a>
        <a href="calendar.jsp"><img src="img/quickmenulogo/calendar.png" alt="Calendar Icon"></a>
        <a href="mypage.jsp"><img src="img/quickmenulogo/menu.png" alt="menu Icon"></a>
    </div>

    <div class="container">
        <div class="category">
            <div class="category__item">����/���� (10)</div>
            <div class="category__item">����/���ݸ�/�ø��� (15)</div>
            <div class="category__item">��/������/������ǰ (20)</div>
            <div class="category__item">����ǰ/���̽�ũ�� (8)</div>
            <div class="category__item">���깰/�Ǿ (12)</div>
            <div class="category__item">���� (25)</div>
            <div class="category__item">ä�� (30)</div>
            <div class="category__item">���/��� (18)</div>
            <div class="category__item">�ǰ���ǰ (10)</div>
            <div class="category__item">������/����� (5)</div>
        </div>
        
        <div class="search-box">
            <input type="text" id="searchInput" placeholder="��ǰ�� �˻����ּ���">
            <button id="searchButton">�˻�</button>
        </div>
        <div class="product-list">
            <!-- Sample Product -->
            <div class="product" data-category="water_drinks">
                <a href="infoProduct.jsp">
                <img src="img/product/������������.jpg" style="width: 100%;">
                 </a>
                <h3 class="product-title">������������ 500ml 1��</h3> 
                <p class="product-price">1,050��</p>
                <p class="product-discounted-price"><s>1,400��</s></p>
                <div class="logo-image">
                    <a target="_blank" href="https://front.homeplus.co.kr/?utm_medium=cpc&utm_source=google&utm_campaign=ghs_keyword_20220000_cpc_homeplus_brand&utm_content=awareness_34&utm_term=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_network=g&gt_keyword=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_target_id=kwd-322167941963&gt_campaign_id=17302997946&gt_adgroup_id=136167318199&gt_device=c&gad=1">
                        <img src="img/logo/homeplus.jpg" alt="Ȩ�÷��� �ΰ�" class="logo-image__img">
                        </a>  
                </div>           
            </div>
               <!-- Sample Product -->
            <div class="product" data-category="water_drinks">
                <a href="infoProduct.jsp">
                <img src="img/product/������������.jpg" style="width: 100%;">
                 </a>
                <h3 class="product-title">�Ŷ�� 160g 1����</h3>           
                <p class="product-price">1,050��</p>
                <p class="product-discounted-price"><s>1,400��</s></p>
                <div class="logo-image">
                    <a target="_blank" href="https://front.homeplus.co.kr/?utm_medium=cpc&utm_source=google&utm_campaign=ghs_keyword_20220000_cpc_homeplus_brand&utm_content=awareness_34&utm_term=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_network=g&gt_keyword=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_target_id=kwd-322167941963&gt_campaign_id=17302997946&gt_adgroup_id=136167318199&gt_device=c&gad=1">
                        <img src="img/logo/emart.png" alt="�̸�Ʈ �ΰ�" class="logo-image__img">
                        </a>
                </div>          
            </div>


               <!-- Sample Product -->
            <div class="product" data-category="water_drinks">
                <a href="infoProduct.jsp">
                <img src="img/product/������������.jpg" style="width: 100%;">
                 </a>
                <h3 class="product-title">������������ 500ml 1��</h3>            
                <p class="product-price">1,050��</p>
                <p class="product-discounted-price"><s>1,400��</s></p>
                <div class="logo-image">
                    <a target="_blank" href="https://front.homeplus.co.kr/?utm_medium=cpc&utm_source=google&utm_campaign=ghs_keyword_20220000_cpc_homeplus_brand&utm_content=awareness_34&utm_term=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_network=g&gt_keyword=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_target_id=kwd-322167941963&gt_campaign_id=17302997946&gt_adgroup_id=136167318199&gt_device=c&gad=1">
                        <img src="img/logo/cu.png" alt="CU �ΰ�" class="logo-image__img">
                        </a>
                </div>        
            </div>
               <!-- Sample Product -->
            <div class="product" data-category="water_drinks">
                <a href="infoProduct.jsp">
                <img src="img/product/������������.jpg" style="width: 100%;">
                 </a>
                <h3 class="product-title">������������ 500ml 1��</h3>
            
                <p class="product-price">1,050��</p>
                <p class="product-discounted-price"><s>1,400��</s></p>
                <div class="logo-image">
                    <a target="_blank" href="https://front.homeplus.co.kr/?utm_medium=cpc&utm_source=google&utm_campaign=ghs_keyword_20220000_cpc_homeplus_brand&utm_content=awareness_34&utm_term=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_network=g&gt_keyword=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_target_id=kwd-322167941963&gt_campaign_id=17302997946&gt_adgroup_id=136167318199&gt_device=c&gad=1">
                        <img src="img/logo/lottemart.png" alt="�Ե���Ʈ �ΰ�" class="logo-image__img">
                        </a> 
                </div>  
            </div> 
              <!-- Sample Product -->
            <div class="product" data-category="water_drinks">
                <a href="infoProduct.jsp">
                <img src="img/product/������������.jpg" style="width: 100%;">
                 </a>
                <h3 class="product-title">������������ 500ml 1��</h3>
                <p class="product-price">1,050��</p>
                <p class="product-discounted-price"><s>1,400��</s></p>
                <div class="logo-image">
                    <a target="_blank" href="https://front.homeplus.co.kr/?utm_medium=cpc&utm_source=google&utm_campaign=ghs_keyword_20220000_cpc_homeplus_brand&utm_content=awareness_34&utm_term=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_network=g&gt_keyword=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_target_id=kwd-322167941963&gt_campaign_id=17302997946&gt_adgroup_id=136167318199&gt_device=c&gad=1">
                        <img src="img/logo/ministop.png" alt="�̴Ͻ��� �ΰ�" class="logo-image__img">
                        </a>
                </div>     
            </div>
               <!-- Sample Product -->
            <div class="product" data-category="water_drinks">
                <a href="infoProduct.jsp">
                <img src="img/product/������������.jpg" style="width: 100%;">
                 </a>
                <h3 class="product-title">������������ 500ml 1��</h3>
            
                <p class="product-price">1,050��</p>
                <p class="product-discounted-price"><s>1,400��</s></p>
                <div class="logo-image">
                    <a target="_blank" href="https://front.homeplus.co.kr/?utm_medium=cpc&utm_source=google&utm_campaign=ghs_keyword_20220000_cpc_homeplus_brand&utm_content=awareness_34&utm_term=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_network=g&gt_keyword=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_target_id=kwd-322167941963&gt_campaign_id=17302997946&gt_adgroup_id=136167318199&gt_device=c&gad=1">
                        <img src="img/logo/7eleven.png" alt="�����Ϸ��� �ΰ�" class="logo-image__img">
                        </a>
                </div>      
            </div>
               <!-- Sample Product -->
            <div class="product" data-category="water_drinks">
               <a href="infoProduct.jsp">
                <img src="img/product/������������.jpg" style="width: 100%;">
                 </a>
                <h3 class="product-title">������������ 500ml 1��</h3>
            
                <p class="product-price">1,050��</p>
                <p class="product-discounted-price"><s>1,400��</s></p>
                <div class="logo-image">
                    <a target="_blank" href="https://front.homeplus.co.kr/?utm_medium=cpc&utm_source=google&utm_campaign=ghs_keyword_20220000_cpc_homeplus_brand&utm_content=awareness_34&utm_term=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_network=g&gt_keyword=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_target_id=kwd-322167941963&gt_campaign_id=17302997946&gt_adgroup_id=136167318199&gt_device=c&gad=1">
                        <img src="img/logo/homeplus.jpg" alt="Ȩ�÷��� �ΰ�" class="logo-image__img">
                        </a>
                </div>          
            </div>


            
               <!-- Sample Product -->
            <div class="product" data-category="water_drinks">
               <a href="infoProduct.jsp">
                <img src="img/product/������������.jpg" style="width: 100%;">
                 </a>
                <h3 class="product-title">������������ 500ml 1��</h3>            
                <p class="product-price">1,050��</p>
                <p class="product-discounted-price"><s>1,400��</s></p>
                <div class="logo-image">
                    <a target="_blank" href="https://front.homeplus.co.kr/?utm_medium=cpc&utm_source=google&utm_campaign=ghs_keyword_20220000_cpc_homeplus_brand&utm_content=awareness_34&utm_term=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_network=g&gt_keyword=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_target_id=kwd-322167941963&gt_campaign_id=17302997946&gt_adgroup_id=136167318199&gt_device=c&gad=1">
                        <img src="img/logo/homeplus.jpg" alt="Ȩ�÷��� �ΰ�" class="logo-image__img">
                        </a>
                </div>
            </div>
               <!-- Sample Product -->
            <div class="product" data-category="water_drinks">
                <a href="infoProduct.jsp">
                <img src="img/product/������������.jpg" style="width: 100%;">
                 </a>
                <h3 class="product-title">������������ 500ml 1��</h3>
                <p class="product-price">1,050��</p>
                <p class="product-discounted-price"><s>1,400��</s></p>
                <div class="logo-image">
                    <a target="_blank" href="https://front.homeplus.co.kr/?utm_medium=cpc&utm_source=google&utm_campaign=ghs_keyword_20220000_cpc_homeplus_brand&utm_content=awareness_34&utm_term=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_network=g&gt_keyword=%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4&gt_target_id=kwd-322167941963&gt_campaign_id=17302997946&gt_adgroup_id=136167318199&gt_device=c&gad=1">
                        <img src="img/logo/homeplus.jpg" alt="Ȩ�÷��� �ΰ�" class="logo-image__img">
                        </a>
                </div>          
            </div>           
        </div>

        <div class="pagination">
            <a href="#" class="page-link">1</a>
            <a href="#" class="page-link">2</a>
            <a href="#" class="page-link">3</a>
            <a href="#" class="page-link">4</a>
            <a href="#" class="page-link">5</a>
            <a href="#" class="page-link">6</a>
            <a href="#" class="page-link">7</a>
            <a href="#" class="page-link">8</a>
            <a href="#" class="page-link">9</a>
            <a href="#" class="page-link">10</a>
            <a href="#" class="page-link">...</a>
            <a href="#" class="page-link">20</a>
            <!-- Add more page links here as needed -->
        </div>
    </div>

    <script>
        const searchButton = document.getElementById('searchButton');
        const searchInput = document.getElementById('searchInput');
        const productTitles = document.querySelectorAll('.product-title');

        // ���޴� JavaScript �ڵ�
window.addEventListener('scroll', () => {
    const quickMenu = document.querySelector('.quick-menu');
    if (window.scrollY > 100) {
        quickMenu.style.opacity = '1';
    } else {
        quickMenu.style.opacity = '0';
    }
});

        searchButton.addEventListener('click', () => {
            const searchTerm = searchInput.value.toLowerCase();

            productTitles.forEach(title => {
                const product = title.parentElement;
                const titleText = title.textContent.toLowerCase();

                if (titleText.includes(searchTerm)) {
                    product.style.display = 'block';
                } else {
                    product.style.display = 'none';
                }
            });
        });
        
        searchInput.addEventListener('keyup', event => {
            if (event.key === 'Enter') {
                performSearch();
            }
        });

        searchButton.addEventListener('click', performSearch);

        function performSearch() {
            const searchTerm = searchInput.value.toLowerCase();

            productTitles.forEach(title => {
                const product = title.parentElement;
                const titleText = title.textContent.toLowerCase();

                if (titleText.includes(searchTerm)) {
                    product.style.display = 'block';
                } else {
                    product.style.display = 'none';
                }
            });
        }
        
        
        // ī�װ� Ŭ�� ���� ��, display �ǵ��� �ϴ� �ڵ�
        const categoryItems = document.querySelectorAll('.category__item');
        const productItems = document.querySelectorAll('.product');

        categoryItems.forEach(item => {
            item.addEventListener('click', () => {
                const selectedCategory = item.textContent.trim().toLowerCase();
                
                productItems.forEach(product => {
                    const productCategory = product.getAttribute('data-category');
                    if (selectedCategory === 'all' || selectedCategory === productCategory) {
                        product.style.display = 'block';
                    } else {
                        product.style.display = 'none';
                    }
                });
            });
        });
    </script>
</body>
</html>