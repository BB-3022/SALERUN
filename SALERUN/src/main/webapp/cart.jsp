<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Shopping Basket</title>
<style>
	.container{  overflow: hidden; }
	.container { overflow: hidden; width:100%; max-width: 800px; margin:40px auto;  }
	.container .evt-map{ width:100%; height:300px; border:solid 1px #eee; }
	.container .form{ margin:10px 0; border-bottom: solid 3px #eee; padding:5px 0;}
	.container .form input{ width:200px; padding:5px 3px; font-size:12px; }
	.container .form a{ display: inline-block; width:80px; text-align:center; border:solid 1px #eee; text-decoration: none; color:#333; font-size:12px; padding:5px 0; }

</style>
</head>

<body>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d509a93b508920896c521a91ee47ca0&libraries=services,clusterer,drawing"></script>
    
    <div class="container">
        <div class="group">
            <h1>지도</h1>
            <div class="form" id="storeForm">
                <form id="storeSelectionForm">
                    <label><input type="checkbox" name="stores" value="홈플러스"> 홈플러스</label><br>
                    <label><input type="checkbox" name="stores" value="롯데마트"> 롯데마트</label><br>
                    <label><input type="checkbox" name="stores" value="이마트"> 이마트</label><br>
                    <label><input type="checkbox" name="stores" value="GS25"> GS25</label><br>
                    <label><input type="checkbox" name="stores" value="CU"> CU</label><br>
                    <label><input type="checkbox" name="stores" value="세븐일레븐"> 세븐일레븐</label>
                </form>
                <input type="text" class="evt-address" name="address" value="" placeholder="주소입력">
                <button type="button" id="searchButton">검색</button>
            </div>
            <div class="evt-map" id="map"></div>
        </div>
    </div>

    <script>
    var container = document.getElementById('map');
    var options = {
       center: new kakao.maps.LatLng(35.1466, 126.9223),
       level: 3
    };
	// 지도를 생성합니다.
    var map = new kakao.maps.Map(container, options);

     // 마커를 표시할 위치와 title 객체 배열입니다 
	var positions = [
	    {
	        title: '이마트', 
	        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
	    },
	    {
	        title: '홈플러스', 
	        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
	    },

	];
                 
      
   		// 마커 이미지의 이미지 주소입니다
      var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
      
      for (var i = 0; i < positions.length; i ++) {
    	    
    	    // 마커 이미지의 이미지 크기 입니다
    	    var imageSize = new kakao.maps.Size(24, 35); 
    	    
    	    // 마커 이미지를 생성합니다    
    	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    	    
    	    // 마커를 생성합니다
    	    var marker = new kakao.maps.Marker({
    	        map: map, // 마커를 표시할 지도
    	        position: positions[i].latlng, // 마커를 표시할 위치
    	        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
    	        image : markerImage // 마커 이미지 
    	    });
      };
    	 	
/*     	    // 인포윈도우를 표시하는 클로저를 만드는 함수
    	    function makeOverListener(map, marker, infowindow) {
    	        return function () {
    	            infowindow.open(map, marker);
    	        };
    	    }
    	    // 인포윈도우를 닫는 클로저를 만드는 함수
    	    function makeOutListener(infowindow) {
    	        return function () {
    	            infowindow.close();
    	        };
    	} */
  
    </script>
</body>
</html>