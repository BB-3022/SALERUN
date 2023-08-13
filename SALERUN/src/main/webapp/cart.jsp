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
            <h1>����</h1>
            <div class="form" id="storeForm">
                <form id="storeSelectionForm">
                    <label><input type="checkbox" name="stores" value="Ȩ�÷���"> Ȩ�÷���</label><br>
                    <label><input type="checkbox" name="stores" value="�Ե���Ʈ"> �Ե���Ʈ</label><br>
                    <label><input type="checkbox" name="stores" value="�̸�Ʈ"> �̸�Ʈ</label><br>
                    <label><input type="checkbox" name="stores" value="GS25"> GS25</label><br>
                    <label><input type="checkbox" name="stores" value="CU"> CU</label><br>
                    <label><input type="checkbox" name="stores" value="�����Ϸ���"> �����Ϸ���</label>
                </form>
                <input type="text" class="evt-address" name="address" value="" placeholder="�ּ��Է�">
                <button type="button" id="searchButton">�˻�</button>
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
	// ������ �����մϴ�.
    var map = new kakao.maps.Map(container, options);

     // ��Ŀ�� ǥ���� ��ġ�� title ��ü �迭�Դϴ� 
	var positions = [
	    {
	        title: '�̸�Ʈ', 
	        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
	    },
	    {
	        title: 'Ȩ�÷���', 
	        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
	    },

	];
                 
      
   		// ��Ŀ �̹����� �̹��� �ּ��Դϴ�
      var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
      
      for (var i = 0; i < positions.length; i ++) {
    	    
    	    // ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
    	    var imageSize = new kakao.maps.Size(24, 35); 
    	    
    	    // ��Ŀ �̹����� �����մϴ�    
    	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    	    
    	    // ��Ŀ�� �����մϴ�
    	    var marker = new kakao.maps.Marker({
    	        map: map, // ��Ŀ�� ǥ���� ����
    	        position: positions[i].latlng, // ��Ŀ�� ǥ���� ��ġ
    	        title : positions[i].title, // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
    	        image : markerImage // ��Ŀ �̹��� 
    	    });
      };
    	 	
/*     	    // ���������츦 ǥ���ϴ� Ŭ������ ����� �Լ�
    	    function makeOverListener(map, marker, infowindow) {
    	        return function () {
    	            infowindow.open(map, marker);
    	        };
    	    }
    	    // ���������츦 �ݴ� Ŭ������ ����� �Լ�
    	    function makeOutListener(infowindow) {
    	        return function () {
    	            infowindow.close();
    	        };
    	} */
  
    </script>
</body>
</html>