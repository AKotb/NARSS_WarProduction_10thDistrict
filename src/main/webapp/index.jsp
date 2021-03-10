<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

<!-- Basic Page Needs ==================================================================================================== -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Documenting 10th District Nasr City">
<meta name="author" content="NARSS Dev Team">

<!-- Mobile Specific Metas ==================================================================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

<!-- CSS ==================================================================================================== -->
<link rel="stylesheet" href="resources/css/base.css">
<link rel="stylesheet" href="resources/css/skeleton.css">
<link rel="stylesheet" href="resources/css/screen.css">
<link rel="stylesheet" href="resources/css/prettyPhoto.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="resources/css/warproductionalhayalaasher.css" />

<!-- Favicons ==================================================================================================== -->
<link rel="shortcut icon" href="resources/images/favicon.png">
<link rel="apple-touch-icon"
	href="resources/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="resources/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="resources/images/apple-touch-icon-114x114.png">

<!-- Google Fonts ==================================================================================================== -->
<link
	href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>

<!-- Scripts ==================================================================================================== -->
<script src="resources/js/jquery-1.8.0.min.js" type="text/javascript"></script>
<!-- Main js files -->
<script src="resources/js/screen.js" type="text/javascript"></script>
<!-- Tooltip -->
<script src="resources/js/poshytip-1.0/src/jquery.poshytip.min.js"
	type="text/javascript"></script>
<!-- Tabs -->
<script src="resources/js/tabs.js" type="text/javascript"></script>
<!-- Tweets -->
<script src="resources/js/jquery.tweetable.js" type="text/javascript"></script>
<!-- Include prettyPhoto -->
<script src="resources/js/jquery.prettyPhoto.js" type="text/javascript"></script>
<!-- Include Superfish -->
<script src="resources/js/superfish.js" type="text/javascript"></script>
<script src="resources/js/hoverIntent.js" type="text/javascript"></script>
<!-- Flexslider -->
<script src="resources/js/jquery.flexslider-min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="resources/js/modernizr.custom.29473.js"></script>
<!-- Business js files-->
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDxcedr1zrD8h225vpj3hNseos5mHGEDVY&callback=initMap"
	async defer></script>
<script>
	let map;
	let historicalOverlay2017;
	let historicalOverlay2019;
	var infowindow;
	function initMap() {
		var mapcenter = {
			lat : 30.04636339157237,
			lng : 31.375549031553224
		};
		map = new google.maps.Map(document.getElementById('map'), {
			zoom : 17,
			center : mapcenter,
			mapTypeId : 'satellite'
		});

		infowindow = new google.maps.InfoWindow();

		var imageBounds = {
			north : 30.0487624164,
			south : 30.044237623,
			east : 31.3787343556,
			west : 31.3709786191
		};
		historicalOverlay2017 = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Pleiades_2017_WGS84.jpg',
				imageBounds);
		historicalOverlay2019 = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Pleiades_2019_WGS84.jpg',
				imageBounds);

	}

	//load raster image (pleiades 2017)
	function loadrasterpleiades2017() {
		var checkbox = document.getElementById('rst_pleiades_2017');
		if (checkbox.checked == true) {
			historicalOverlay2017.setMap(map);
		} else {
			historicalOverlay2017.setMap(null);
		}
	}

	//load raster image (pleiades 2019)
	function loadrasterpleiades2019() {
		var checkbox = document.getElementById('rst_pleiades_2019');
		if (checkbox.checked == true) {
			historicalOverlay2019.setMap(map);
		} else {
			historicalOverlay2019.setMap(null);
		}
	}

	//load vector layer (Urban 2017)
	function loadvectorurban2017() {
		var checkbox = document.getElementById('vct_urban_2017');
		if (checkbox.checked == true) {
			vectorurban2017_layer = new google.maps.Data({
				map : map
			});
			vectorurban2017_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Urban_2017_GCS84.geojson');
			vectorurban2017_layer.setStyle(function(feature) {
				return ({
					fillColor : 'orange',
					strokeColor : '#3300FF',
					strokeWeight : 1
				});
			});
		} else {
			vectorurban2017_layer.setMap(null);
		}
	}

	//load vector layer (Urban 2019)
	function loadvectorurban2019() {
		var checkbox = document.getElementById('vct_urban_2019');
		if (checkbox.checked == true) {
			vectorurban2019_layer = new google.maps.Data({
				map : map
			});
			vectorurban2019_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Urban_2019_GCS84.geojson');
			vectorurban2019_layer.setStyle(function(feature) {
				return ({
					fillColor : 'green',
					strokeColor : '#3300FF',
					strokeWeight : 1
				});
			});
		} else {
			vectorurban2019_layer.setMap(null);
		}
	}

	//load vector layer (Urban Changes)
	function loadvectorurbanchanges() {
		var checkbox = document.getElementById('vct_urban_changes');
		if (checkbox.checked == true) {
			vectorurbanchanges_layer = new google.maps.Data({
				map : map
			});
			vectorurbanchanges_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Changes_2017_2019_GCS84.geojson');
			vectorurbanchanges_layer.setStyle(function(feature) {
				return ({
					fillColor : 'red',
					strokeColor : '#3300FF',
					strokeWeight : 1
				});
			});
		} else {
			vectorurbanchanges_layer.setMap(null);
		}
	}

	//load vector layer (Procad Buildings)
	function loadprocadbuildings() {
		var checkbox = document.getElementById('vct_procadbuildings');
		if (checkbox.checked == true) {
			buildings_layer = new google.maps.Data({
				map : map
			});
			buildings_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Buildings.geojson');
			buildings_layer.setStyle(function(feature) {
				var color = '#FF0000';
				return ({
					fillColor : color,
					strokeColor : "black",
					strokeWeight : 2
				});
			});

			buildings_layer
					.addListener(
							'click',
							function(event) {
								buildings_layer.revertStyle();
								buildings_layer.overrideStyle(event.feature, {
									strokeWeight : 4,
									strokeColor : 'red',
									fillColor : 'green'
								});
								var BL_CTY_NAME = event.feature
										.getProperty('BL_CTY_NAME');
								var BL_REGON_NAME = event.feature
										.getProperty("BL_REGON_NAME");
								var BL_AREA_NAME = event.feature
										.getProperty("BL_AREA_NAME");
								var BL_ZONE_CODE = event.feature
										.getProperty("BL_ZONE_CODE");
								var BL_SUB_ZONE_CODE = event.feature
										.getProperty("BL_SUB_ZONE_CODE");
								var BL_BUILDING_BARCODE = event.feature
										.getProperty("BL_BUILDING_BARCODE");
								var BL_BUILDING_NO = event.feature
										.getProperty("BL_BUILDING_NO");
								var BL_NO_FLATS_PER_FLOOR = event.feature
										.getProperty("BL_NO_FLATS_PER_FLOOR");
								var BL_NO_UNITS = event.feature
										.getProperty("BL_NO_UNITS");
								var BL_ARCHITECTURAL_STYLE = event.feature
										.getProperty("BL_ARCHITECTURAL_STYLE");
								var BL_STATUS = event.feature
										.getProperty("BL_STATUS");
								var BL_VIOLATIONS = event.feature
										.getProperty("BL_VIOLATIONS");
								var BL_TRESPASSING_BUILDING = event.feature
										.getProperty("BL_TRESPASSING_BUILDING");
								var BL_TRESPASSING_FENCE = event.feature
										.getProperty("BL_TRESPASSING_FENCE");
								var BL_TRESPASSING_WORKS = event.feature
										.getProperty("BL_TRESPASSING_WORKS");
								var BL_CHANGING_ACTIVITY = event.feature
										.getProperty("BL_CHANGING_ACTIVITY");
								var BL_BUILDING_CURR_NO = event.feature
										.getProperty("BL_BUILDING_CURR_NO");
								var CITY_CODE = event.feature
										.getProperty("CITY_CODE");
								var AREA_CODE = event.feature
										.getProperty("AREA_CODE");
								var REGON_CODE = event.feature
										.getProperty("REGON_CODE");
								var BL_BLD_MODEL = event.feature
										.getProperty("BL_BLD_MODEL");
								var BL_STREET_NAME = event.feature
										.getProperty("BL_STREET_NAME");
								var BL_PROPERTY_OWNERSHIP = event.feature
										.getProperty("BL_PROPERTY_OWNERSHIP");
								var var1 = event.feature
										.getProperty("نشاط_الدور_الارضى_للمخطط");
								var var2 = event.feature
										.getProperty("نشاط_الدور_الارضى_للوضع_الراهن");
								var var3 = event.feature
										.getProperty("نوع_المخالفة");
								var var4 = event.feature
										.getProperty("عدد_الادوار_المخالفة");
								var var5 = event.feature
										.getProperty("تغير_نشاط_العقار_طبقا_للدور");
								var var6 = event.feature
										.getProperty("استعمال_المخطط");
								var var7 = event.feature
										.getProperty("استعمال_الوضع_الراهن");
								var var8 = event.feature
										.getProperty("مخالفة_تغير_نشاط");
								var var9 = event.feature
										.getProperty("مساحة_النموذج");
								var var10 = event.feature
										.getProperty("عدد_الادوار_طبقا_للمخطط");
								var var11 = event.feature
										.getProperty("عدد_الادوار_فى_الوضع_الراهن");
								var var12 = event.feature
										.getProperty("عدد_الوحدات_المخالفة");
								var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
										+ "بيانات المبنى"
										+ "</h1><br><br>"
										+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
										+ BL_CTY_NAME
										+ "</td><td class=\'rightcolumn\'>محافظة</td></tr><tr><td class=\'td\'>"
										+ BL_REGON_NAME
										+ "</td><td class=\'rightcolumn\'>منطقة</td></tr><tr><td class=\'td\'>"
										+ BL_AREA_NAME
										+ "</td><td class=\'rightcolumn\'>حى</td></tr><tr><td class=\'td\'>"
										+ BL_ZONE_CODE
										+ "</td><td class=\'rightcolumn\'>مربع</td></tr><tr><td class=\'td\'>"
										+ BL_SUB_ZONE_CODE
										+ "</td><td class=\'rightcolumn\'>بلوك</td></tr><tr><td class=\'td\'>"
										+ BL_BUILDING_BARCODE
										+ "</td><td class=\'rightcolumn\'>رقم الباركود للعقار</td></tr><tr><td class=\'td\'>"
										+ BL_BUILDING_NO
										+ "</td><td class=\'rightcolumn\'>رقم العقار  طبقا للمخطط</td></tr><tr><td class=\'td\'>"
										+ BL_NO_FLATS_PER_FLOOR
										+ "</td><td class=\'rightcolumn\'>عدد الوحدات بالدور</td></tr><tr><td class=\'td\'>"
										+ BL_NO_UNITS
										+ "</td><td class=\'rightcolumn\'>اجمالي عدد الوحدات</td></tr><tr><td class=\'td\'>"
										+ BL_ARCHITECTURAL_STYLE
										+ "</td><td class=\'rightcolumn\'>الاسلوب الآنشائي</td></tr><tr><td class=\'td\'>"
										+ BL_STATUS
										+ "</td><td class=\'rightcolumn\'>حالة العقار</td></tr><tr><td class=\'td\'>"
										+ BL_VIOLATIONS
										+ "</td><td class=\'rightcolumn\'>مخالفات والتعديات</td></tr><tr><td class=\'td\'>"
										+ BL_TRESPASSING_BUILDING
										+ "</td><td class=\'rightcolumn\'>تعدي بمبني</td></tr><tr><td class=\'td\'>"
										+ BL_TRESPASSING_FENCE
										+ "</td><td class=\'rightcolumn\'>تعدي بسور</td></tr><tr><td class=\'td\'>"
										+ BL_TRESPASSING_WORKS
										+ "</td><td class=\'rightcolumn\'>تعدي بأشغالات</td></tr><tr><td class=\'td\'>"
										+ BL_CHANGING_ACTIVITY
										+ "</td><td class=\'rightcolumn\'>تغيير نشاط</td></tr><tr><td class=\'td\'>"
										+ BL_BUILDING_CURR_NO
										+ "</td><td class=\'rightcolumn\'>رقم العقار طبقا للوضع الراهن</td></tr><tr><td class=\'td\'>"
										+ CITY_CODE
										+ "</td><td class=\'rightcolumn\'>كود المحافظه</td></tr><tr><td class=\'td\'>"
										+ AREA_CODE
										+ "</td><td class=\'rightcolumn\'>كود الحى</td></tr><tr><td class=\'td\'>"
										+ REGON_CODE
										+ "</td><td class=\'rightcolumn\'>كود المنطقه</td></tr><tr><td class=\'td\'>"
										+ BL_BLD_MODEL
										+ "</td><td class=\'rightcolumn\'>نموذج العقار</td></tr><tr><td class=\'td\'>"
										+ BL_STREET_NAME
										+ "</td><td class=\'rightcolumn\'>اسم الشارع</td></tr><tr><td class=\'td\'>"
										+ BL_PROPERTY_OWNERSHIP
										+ "</td><td class=\'rightcolumn\'>ملكية العقار</td></tr><tr><td class=\'td\'>"
										+ var1
										+ "</td><td class=\'rightcolumn\'>نشاط_الدور_الارضى_للمخطط</td></tr><tr><td class=\'td\'>"
										+ var2
										+ "</td><td class=\'rightcolumn\'>نشاط_الدور_الارضى_للوضع_الراهن</td></tr><tr><td class=\'td\'>"
										+ var3
										+ "</td><td class=\'rightcolumn\'>نوع_المخالفة</td></tr><tr><td class=\'td\'>"
										+ var4
										+ "</td><td class=\'rightcolumn\'>عدد_الادوار_المخالفة</td></tr><tr><td class=\'td\'>"
										+ var5
										+ "</td><td class=\'rightcolumn\'>تغير_نشاط_العقار_طبقا_للدور</td></tr><tr><td class=\'td\'>"
										+ var6
										+ "</td><td class=\'rightcolumn\'>استعمال_المخطط</td></tr><tr><td class=\'td\'>"
										+ var7
										+ "</td><td class=\'rightcolumn\'>استعمال_الوضع_الراهن</td></tr><tr><td class=\'td\'>"
										+ var8
										+ "</td><td class=\'rightcolumn\'>مخالفة_تغير_نشاط</td></tr><tr><td class=\'td\'>"
										+ var9
										+ "</td><td class=\'rightcolumn\'>مساحة_النموذج</td></tr><tr><td class=\'td\'>"
										+ var10
										+ "</td><td class=\'rightcolumn\'>عدد_الادوار_طبقا_للمخطط</td></tr><tr><td class=\'td\'>"
										+ var11
										+ "</td><td class=\'rightcolumn\'>عدد_الادوار_فى_الوضع_الراهن</td></tr><tr><td class=\'td\'>"
										+ var12
										+ "</td><td class=\'rightcolumn\'>عدد_الوحدات_المخالفة</td></tr></table>"
										+ "</div>";
								infowindow.setContent(content);
								infowindow.setPosition(event.latLng);
								infowindow.open(map);
							});

			buildings_layer.addListener('mouseover', function(event) {
				buildings_layer.revertStyle();
				buildings_layer.overrideStyle(event.feature, {
					strokeWeight : 4,
					fillColor : 'yellow',
					strokeColor : 'yellow'
				});
			});

			buildings_layer.addListener('mouseout', function(event) {
				buildings_layer.revertStyle();
			});

		} else {
			buildings_layer.setMap(null);
		}
	}

	//load vector layer (Procad Violations)
	function loadprocadviolations() {
		var checkbox = document.getElementById('vct_procadviolations');
		if (checkbox.checked == true) {
			violations_layer = new google.maps.Data({
				map : map
			});
			violations_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Violations.geojson');
			violations_layer.setStyle(function(feature) {
				var color = '#EECDF7';
				return ({
					fillColor : color,
					strokeColor : "black",
					strokeWeight : 2
				});
			});

			violations_layer
					.addListener(
							'click',
							function(event) {
								violations_layer.revertStyle();
								violations_layer.overrideStyle(event.feature, {
									strokeWeight : 4,
									strokeColor : 'red',
									fillColor : 'green'
								});
								var EV_RELATED_BULDING_NO = event.feature
										.getProperty('EV_RELATED_BULDING_NO');
								var EV_RELATED_BUDLING_BARCODE = event.feature
										.getProperty('EV_RELATED_BUDLING_BARCODE');
								var EV_TRESPASSING_TYPE = event.feature
										.getProperty("EV_TRESPASSING_TYPE");
								var EV_TRESPASSING_ACTIVY = event.feature
										.getProperty("EV_TRESPASSING_ACTIVY");
								var EV_NO_OF_FLOOR = event.feature
										.getProperty("EV_NO_OF_FLOOR");
								var EV_ARCHITECTURAL_STYLE = event.feature
										.getProperty("EV_ARCHITECTURAL_STYLE");
								var EV_STATUS = event.feature
										.getProperty("EV_STATUS");
								var EV_COMMENTS = event.feature
										.getProperty("EV_COMMENTS");
								var EV_LAND_SIZE = event.feature
										.getProperty("EV_LAND_SIZE");
								var EV_REPETED_SIZE = event.feature
										.getProperty("EV_REPETED_SIZE");
								var ZONE_CODE = event.feature
										.getProperty("ZONE_CODE");
								var ID_TRESPASSING = event.feature
										.getProperty("ID_TRESPASSING");
								var TRESPASSING_CODE = event.feature
										.getProperty("TRESPASSING_CODE");
								var var13 = event.feature
										.getProperty("تصنيف_التعدى");
								var var14 = event.feature
										.getProperty("استعمال_الارض_فى_2017");
								var var15 = event.feature
										.getProperty("استعمال_الارض_الوضع_الراهن");
								var var16 = event.feature
										.getProperty("سنة_التعدى");
								var var17 = event.feature
										.getProperty("استعمال_الارض_فى_المخطط");
								var var18 = event.feature
										.getProperty("تعديات_يجب_ازالتها");
								var var19 = event.feature
										.getProperty("تقنين_الاوضاع");
								var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
										+ "بيانات المخالفة"
										+ "</h1><br><br>"
										+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
										+ EV_RELATED_BULDING_NO
										+ "</td><td class=\'rightcolumn\'>المبنى_التابع_اليها_اذا_وجد</td></tr><tr><td class=\'td\'>"
										+ EV_RELATED_BUDLING_BARCODE
										+ "</td><td class=\'rightcolumn\'>باركود المبنى</td></tr><tr><td class=\'td\'>"
										+ EV_TRESPASSING_TYPE
										+ "</td><td class=\'rightcolumn\'>نوع_التعدى</td></tr><tr><td class=\'td\'>"
										+ EV_TRESPASSING_ACTIVY
										+ "</td><td class=\'rightcolumn\'>نشاط_التعدى</td></tr><tr><td class=\'td\'>"
										+ EV_NO_OF_FLOOR
										+ "</td><td class=\'rightcolumn\'>عدد_الأدوار</td></tr><tr><td class=\'td\'>"
										+ EV_ARCHITECTURAL_STYLE
										+ "</td><td class=\'rightcolumn\'>أسلوب_الانشائى</td></tr><tr><td class=\'td\'>"
										+ EV_STATUS
										+ "</td><td class=\'rightcolumn\'>حالة_العقار</td></tr><tr><td class=\'td\'>"
										+ EV_COMMENTS
										+ "</td><td class=\'rightcolumn\'>ملاحظات</td></tr><tr><td class=\'td\'>"
										+ EV_LAND_SIZE
										+ "</td><td class=\'rightcolumn\'>مساحة_الأرض</td></tr><tr><td class=\'td\'>"
										+ EV_REPETED_SIZE
										+ "</td><td class=\'rightcolumn\'>مساحة المخالفة (أرضى ومتكرر)</td></tr><tr><td class=\'td\'>"
										+ ZONE_CODE
										+ "</td><td class=\'rightcolumn\'>كود المربع</td></tr><tr><td class=\'td\'>"
										+ ID_TRESPASSING
										+ "</td><td class=\'rightcolumn\'>ترقيم التعدى</td></tr><tr><td class=\'td\'>"
										+ TRESPASSING_CODE
										+ "</td><td class=\'rightcolumn\'>كود التعدى</td></tr><tr><td class=\'td\'>"
										+ var13
										+ "</td><td class=\'rightcolumn\'>تصنيف_التعدى</td></tr><tr><td class=\'td\'>"
										+ var14
										+ "</td><td class=\'rightcolumn\'>استعمال_الارض_فى_2017</td></tr><tr><td class=\'td\'>"
										+ var15
										+ "</td><td class=\'rightcolumn\'>استعمال_الارض_الوضع_الراهن</td></tr><tr><td class=\'td\'>"
										+ var16
										+ "</td><td class=\'rightcolumn\'>سنة_التعدى</td></tr><tr><td class=\'td\'>"
										+ var17
										+ "</td><td class=\'rightcolumn\'>استعمال_الارض_فى_المخطط</td></tr><tr><td class=\'td\'>"
										+ var18
										+ "</td><td class=\'rightcolumn\'>تعديات_يجب_ازالتها</td></tr><tr><td class=\'td\'>"
										+ var19
										+ "</td><td class=\'rightcolumn\'>تقنين_الاوضاع</td></tr></table>"
										+ "</div>";
								infowindow.setContent(content);
								infowindow.setPosition(event.latLng);
								infowindow.open(map);
							});

			violations_layer.addListener('mouseover', function(event) {
				violations_layer.revertStyle();
				violations_layer.overrideStyle(event.feature, {
					strokeWeight : 4,
					fillColor : 'yellow',
					strokeColor : 'yellow'
				});
			});

			violations_layer.addListener('mouseout', function(event) {
				violations_layer.revertStyle();
			});
		} else {
			violations_layer.setMap(null);
		}
	}

	//load vector layer (Procad Entrances)
	function loadprocadentrances() {
		var checkbox = document.getElementById('vct_procadentrances');
		if (checkbox.checked == true) {
			entrances_layer = new google.maps.Data({
				map : map
			});
			entrances_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Entrances.geojson');
			entrances_layer.setStyle(function(feature) {
				return ({
					fillColor : '#007B80',
					strokeColor : '#007B80',
					strokeWeight : 2
				});
			});

			entrances_layer
					.addListener(
							'click',
							function(event) {
								entrances_layer.revertStyle();
								entrances_layer.overrideStyle(event.feature, {
									strokeWeight : 4,
									strokeColor : 'red',
									fillColor : 'green'
								});
								var entrances_building_barcode = event.feature
										.getProperty('باركود_العقار');
								var entrances_zone_code = event.feature
										.getProperty('zone_code');
								var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
										+ "بيانات المدخل"
										+ "</h1><br><br>"
										+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
										+ entrances_building_barcode
										+ "</td><td class=\'rightcolumn\'>باركود المبنى</td></tr><tr><td class=\'td\'>"
										+ entrances_zone_code
										+ "</td><td class=\'rightcolumn\'>كود المربع</td></tr></table>"
										+ "</div>";
								infowindow.setContent(content);
								infowindow.setPosition(event.latLng);
								infowindow.open(map);
							});

			entrances_layer.addListener('mouseover', function(event) {
				entrances_layer.revertStyle();
				entrances_layer.overrideStyle(event.feature, {
					strokeWeight : 4,
					fillColor : 'yellow',
					strokeColor : 'yellow'
				});
			});

			entrances_layer.addListener('mouseout', function(event) {
				entrances_layer.revertStyle();
			});
		} else {
			entrances_layer.setMap(null);
		}
	}

	//load vector layer (Procad Roads)
	function loadprocadroads() {
		var checkbox = document.getElementById('vct_procadroads');
		if (checkbox.checked == true) {
			roads_layer = new google.maps.Data({
				map : map
			});
			roads_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Roads.geojson');
			roads_layer.setStyle(function(feature) {
				return ({
					fillColor : '#FFE584',
					strokeColor : '#FFE584',
					strokeWeight : 2
				});
			});

			roads_layer
					.addListener(
							'click',
							function(event) {
								roads_layer.revertStyle();
								roads_layer.overrideStyle(event.feature, {
									strokeWeight : 4,
									strokeColor : 'red',
									fillColor : 'green'
								});
								var roads_street_type = event.feature
										.getProperty('نوع_الشارع');
								var roads_street_width = event.feature
										.getProperty('عرض_الشارع');
								var roads_street_status = event.feature
										.getProperty('حالة_الشارع');
								var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
										+ "بيانات الشارع"
										+ "</h1><br><br>"
										+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
										+ roads_street_type
										+ "</td><td class=\'rightcolumn\'>نوع_الشارع</td></tr><tr><td class=\'td\'>"
										+ roads_street_width
										+ "</td><td class=\'rightcolumn\'>عرض_الشارع</td></tr><tr><td class=\'td\'>"
										+ roads_street_status
										+ "</td><td class=\'rightcolumn\'>حالة_الشارع</td></tr></table>"
										+ "</div>";
								infowindow.setContent(content);
								infowindow.setPosition(event.latLng);
								infowindow.open(map);
							});

			roads_layer.addListener('mouseover', function(event) {
				roads_layer.revertStyle();
				roads_layer.overrideStyle(event.feature, {
					strokeWeight : 4,
					fillColor : 'yellow',
					strokeColor : 'yellow'
				});
			});

			roads_layer.addListener('mouseout', function(event) {
				roads_layer.revertStyle();
			});
		} else {
			roads_layer.setMap(null);
		}
	}

	//load vector layer (Procad Area Boundry)
	function loadprocadareaboundry() {
		var checkbox = document.getElementById('vct_procadareaboundry');
		if (checkbox.checked == true) {
			area_boundary_layer = new google.maps.Data({
				map : map
			});
			area_boundary_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Area_Boundary.geojson');
			area_boundary_layer.setStyle(function(feature) {
				return ({
					fillColor : 'transparent',
					strokeColor : 'black',
					strokeWeight : 2
				});
			});
		} else {
			area_boundary_layer.setMap(null);
		}
	}

	//load vector layer (Procad Zone Boundry)
	function loadprocadzoneboundry() {
		var checkbox = document.getElementById('vct_procadzoneboundry');
		if (checkbox.checked == true) {
			zone_boundary_layer = new google.maps.Data({
				map : map
			});
			zone_boundary_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Zone_Boundary.geojson');
			zone_boundary_layer.setStyle(function(feature) {
				return ({
					fillColor : 'transparent',
					strokeColor : 'blue',
					strokeWeight : 2
				});
			});

			zone_boundary_layer
					.addListener(
							'click',
							function(event) {
								zone_boundary_layer.revertStyle();
								zone_boundary_layer.overrideStyle(
										event.feature, {
											strokeWeight : 4,
											strokeColor : 'red',
											fillColor : 'green'
										});
								var zone_boundary_code_zone = event.feature
										.getProperty('code_zone');
								var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
										+ "بيانات المربع"
										+ "</h1><br><br>"
										+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
										+ zone_boundary_code_zone
										+ "</td><td class=\'rightcolumn\'>كود المربع</td></tr></table>"
										+ "</div>";
								infowindow.setContent(content);
								infowindow.setPosition(event.latLng);
								infowindow.open(map);
							});

			zone_boundary_layer.addListener('mouseover', function(event) {
				zone_boundary_layer.revertStyle();
				zone_boundary_layer.overrideStyle(event.feature, {
					strokeWeight : 4,
					fillColor : 'yellow',
					strokeColor : 'yellow'
				});
			});

			zone_boundary_layer.addListener('mouseout', function(event) {
				zone_boundary_layer.revertStyle();
			});

		} else {
			zone_boundary_layer.setMap(null);
		}
	}

	//load vector layer (Procad General Structure)
	function loadprocadgeneralstructure() {
		var checkbox = document.getElementById('vct_procadgeneralstructure');
		if (checkbox.checked == true) {
			general_structure_1977_layer = new google.maps.Data({
				map : map
			});
			general_structure_1977_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/General_Structure_1977.geojson');
			general_structure_1977_layer.setStyle(function(feature) {
				return ({
					fillColor : '#BDE6F2',
					strokeColor : 'black',
					strokeWeight : 2
				});
			});

			general_structure_1977_layer
					.addListener(
							'click',
							function(event) {
								general_structure_1977_layer.revertStyle();
								general_structure_1977_layer.overrideStyle(
										event.feature, {
											strokeWeight : 4,
											strokeColor : 'red',
											fillColor : 'green'
										});
								var general_structure_1977_usage = event.feature
										.getProperty('استعمال');
								var general_structure_1977_zone_code = event.feature
										.getProperty('ZONE_CODE');
								var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
										+ "بيانات المخطط العام"
										+ "</h1><br><br>"
										+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
										+ general_structure_1977_usage
										+ "</td><td class=\'rightcolumn\'>استعمال</td></tr><tr><td class=\'td\'>"
										+ general_structure_1977_zone_code
										+ "</td><td class=\'rightcolumn\'>كود المربع</td></tr></table>"
										+ "</div>";
								infowindow.setContent(content);
								infowindow.setPosition(event.latLng);
								infowindow.open(map);
							});

			general_structure_1977_layer.addListener('mouseover', function(
					event) {
				general_structure_1977_layer.revertStyle();
				general_structure_1977_layer.overrideStyle(event.feature, {
					strokeWeight : 4,
					fillColor : 'yellow',
					strokeColor : 'yellow'
				});
			});

			general_structure_1977_layer.addListener('mouseout',
					function(event) {
						general_structure_1977_layer.revertStyle();
					});
		} else {
			general_structure_1977_layer.setMap(null);
		}
	}

	//load vector layer (Procad Lands)
	function loadprocadlands() {
		var checkbox = document.getElementById('vct_procadlands');
		if (checkbox.checked == true) {
			lands_layer = new google.maps.Data({
				map : map
			});
			lands_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Lands.geojson');
			lands_layer.setStyle(function(feature) {
				return ({
					fillColor : '#C1F5D8',
					strokeColor : 'black',
					strokeWeight : 2
				});
			});

			lands_layer
					.addListener(
							'click',
							function(event) {
								lands_layer.revertStyle();
								lands_layer.overrideStyle(event.feature, {
									strokeWeight : 4,
									strokeColor : 'red',
									fillColor : 'green'
								});
								var lands_usage_acc_structure = event.feature.getProperty('استعمال_الارض_فى_المخطط');
								var lands_usage_before_2017 = event.feature.getProperty('استعمال_الارض_قبل_2017');
								var lands_usage_current = event.feature.getProperty('استعمال_الارض_فى_الوضع_الراهن');
								var lands_zone_code = event.feature.getProperty('ZONE_CODE');
								var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
										+ "بيانات الأرض"
										+ "</h1><br><br>"
										+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
										+ lands_usage_acc_structure
										+ "</td><td class=\'rightcolumn\'>استعمال_الارض_فى_المخطط</td></tr><tr><td class=\'td\'>"
										+ lands_usage_before_2017
										+ "</td><td class=\'rightcolumn\'>استعمال_الارض_قبل_2017</td></tr><tr><td class=\'td\'>"
										+ lands_usage_current
										+ "</td><td class=\'rightcolumn\'>استعمال_الارض_فى_الوضع_الراهن</td></tr><tr><td class=\'td\'>"
										+ lands_zone_code
										+ "</td><td class=\'rightcolumn\'>كود المربع</td></tr></table>"
										+ "</div>";
								infowindow.setContent(content);
								infowindow.setPosition(event.latLng);
								infowindow.open(map);
							});

			lands_layer.addListener('mouseover', function(event) {
				lands_layer.revertStyle();
				lands_layer.overrideStyle(event.feature, {
					strokeWeight : 4,
					fillColor : 'yellow',
					strokeColor : 'yellow'
				});
			});

			lands_layer.addListener('mouseout', function(event) {
				lands_layer.revertStyle();
			});
		} else {
			lands_layer.setMap(null);
		}
	}
</script>
<title>توثيق الحي العاشر - مدينة نصر</title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 779px; width: 100%;">

		<div id="procad_data_panel">
			<h3 style="color: Blue;">Procad Data</h3>
			<b style="float: right; color: black;">المباني</b><input
				type="checkbox" onclick="loadprocadbuildings();"
				id="vct_procadbuildings" style="float: left;" /> <br /> <b
				style="float: right; color: black;">التعديات</b><input
				type="checkbox" onclick="loadprocadviolations();"
				id="vct_procadviolations" style="float: left;" /> <br /> <b
				style="float: right; color: black;">المداخل</b><input
				type="checkbox" onclick="loadprocadentrances();"
				id="vct_procadentrances" style="float: left;" /> <br /> <b
				style="float: right; color: black;">الطرق</b><input type="checkbox"
				onclick="loadprocadroads();" id="vct_procadroads"
				style="float: left;" /> <br /> <b
				style="float: right; color: black;">حدود المنطقة الكلية</b><input
				type="checkbox" onclick="loadprocadareaboundry();"
				id="vct_procadareaboundry" style="float: left;" /> <br /> <b
				style="float: right; color: black;">حدود المناطق الداخلية</b><input
				type="checkbox" onclick="loadprocadzoneboundry();"
				id="vct_procadzoneboundry" style="float: left;" /> <br /> <b
				style="float: right; color: black;">المخطط العام (1977)</b><input
				type="checkbox" onclick="loadprocadgeneralstructure();"
				id="vct_procadgeneralstructure" style="float: left;" /> <br /> <b
				style="float: right; color: black;">الأراضي</b><input
				type="checkbox" onclick="loadprocadlands();" id="vct_procadlands"
				style="float: left;" /> <br />
		</div>
		<div id="narss_data_panel">
			<h3 style="color: Blue;">NARSS Data</h3>
			<b style="float: right; color: black;">Pleiades 2017</b><input
				type="checkbox" onclick="loadrasterpleiades2017();"
				id="rst_pleiades_2017" style="float: left;" /> <br /> <b
				style="float: right; color: black;">Pleiades 2019</b><input
				type="checkbox" onclick="loadrasterpleiades2019();"
				id="rst_pleiades_2019" style="float: left;" /> <br /> <b
				style="float: right; color: black;">Urban 2017 (Vector)</b><input
				type="checkbox" onclick="loadvectorurban2017();" id="vct_urban_2017"
				style="float: left;" /> <br /> <b
				style="float: right; color: black;">Urban 2019 (Vector)</b><input
				type="checkbox" onclick="loadvectorurban2019();" id="vct_urban_2019"
				style="float: left;" /> <br /> <b
				style="float: right; color: black;">Urban Changes (Vector)</b><input
				type="checkbox" onclick="loadvectorurbanchanges();"
				id="vct_urban_changes" style="float: left;" /> <br />
		</div>

		<div id="map"></div>
	</div>
	<!-- Content ends here ================================================================================================= -->

	<!-- Footer ============================================================================================================ -->
	<jsp:include page="_footer.jsp"></jsp:include>
	<!-- Footer ends here ================================================================================================== -->

</body>
</html>