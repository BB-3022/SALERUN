<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kakao Map Store Locator</title>
    
    <style>
        #map {
            width: 100%;
            height: 500px;
        }
    </style>
</head>
<body>
    <div id="map"></div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	7d509a93b508920896c521a91ee47ca0"></script>
    <script>
        var container = document.getElementById('map');
        var options = {
            center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울 시청을 중심으로 설정
            level: 10
        };
        
        // 지도 생성
        var map = new kakao.maps.Map(container, options);
        
        // 사용자가 선택한 판매처 이름들 (배열로 관리)
        var selectedStores = ["CU", "GS25", "세븐일레븐"]; // 사용자가 선택한 판매처 이름
        
        // 판매처 위치 검색 및 표시
        var places = new kakao.maps.services.Places();

        // 모든 선택한 판매처들에 대해 순차적으로 위치를 검색하고 마커를 추가합니다.
        selectedStores.forEach(function (store) {
            var storeOptions = {
                keyword: store,
                location: map.getCenter(), // 현재 지도 중심을 기준으로 검색
                radius: 5000 // 검색 반경 설정 (미터)
            };

            places.keywordSearch(storeOptions, function (status, result) {
                if (status === kakao.maps.services.Status.OK) {
                    result.forEach(function (place) {
                        var storePosition = new kakao.maps.LatLng(place.y, place.x);
                        
                        // 판매처 마커 표시
                        var storeMarker = new kakao.maps.Marker({
                            position: storePosition,
                            map: map,
                            title: place.place_name
                        });
                        
                        // 마커 클릭 시 인포윈도우 표시 (선택사항)
                        var infowindow = new kakao.maps.InfoWindow({
                            content: place.place_name + " 위치"
                        });
                        
                        kakao.maps.event.addListener(storeMarker, 'click', function () {
                            infowindow.open(map, storeMarker);
                        });
                    });
                }
            });
        });
    </script>
</body>
</html>