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
	let fusedhistoricalOverlay2017;
	let fusedhistoricalOverlay2019;
	let geometriccorrectedhistoricalOverlay2017;
	let geometriccorrectedhistoricalOverlay2019;
	let positiveurbanchangeshistoricalOverlay;
	let negativeurbanchangeshistoricalOverlay;
	let positivenonurbanchangeshistoricalOverlay;
	let negativenonurbanchangeshistoricalOverlay;
	var infowindow;
	function initMap() {
		var mapcenter = {
			lat : 30.04636339157237,
			lng : 31.375549031553224
		};
		map = new google.maps.Map(document.getElementById('map'), {
			zoom : 17,
			center : mapcenter,
			scaleControl: true,
			streetViewControl: true,
			streetViewControlOptions: {
				position: google.maps.ControlPosition.LEFT_BOTTOM,
			},
			zoomControl: true,
			zoomControlOptions: {
				position: google.maps.ControlPosition.LEFT_BOTTOM,
			},
			fullscreenControl: true,
			fullscreenControlOptions: {
				position: google.maps.ControlPosition.LEFT_TOP,
			},
			mapTypeId : 'satellite'
		});

		infowindow = new google.maps.InfoWindow();

		var imageBounds = {
			north : 30.0497530232,
			south : 30.0428180596,
			east : 31.3801049471,
			west : 31.3692724843
		};
		
		var ch_imageBounds = {
				north : 30.0487624164,
				south : 30.0442376671,
				east : 31.37873428,
				west : 31.3709786191
		};
		fusedhistoricalOverlay2017 = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Fused_2017.png',
				imageBounds);
		fusedhistoricalOverlay2019 = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Fused_2019.png',
				imageBounds);
		geometriccorrectedhistoricalOverlay2017 = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Geometric_Corrected_2017.png',
				imageBounds);
		geometriccorrectedhistoricalOverlay2019 = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Geometric_Corrected_2019.png',
				imageBounds);
		positiveurbanchangeshistoricalOverlay = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Positive_Urban_Changes.png',
				ch_imageBounds);
		negativeurbanchangeshistoricalOverlay = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Negative_Urban_Changes.png',
				ch_imageBounds);
		positivenonurbanchangeshistoricalOverlay = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Positive_Non-Urban_Changes.png',
				ch_imageBounds);
		negativenonurbanchangeshistoricalOverlay = new google.maps.GroundOverlay(
				'http://localhost:8080/10thDistirct_RASTER/Negative_Non-Urban_Changes.png',
				ch_imageBounds);

	}

	//load raster image (Fused 2017)
	function loadrasterfused2017() {
		var checkbox = document.getElementById('rst_fused_2017');
		if (checkbox.checked == true) {
			fusedhistoricalOverlay2017.setMap(map);
		} else {
			fusedhistoricalOverlay2017.setMap(null);
		}
	}

	//load raster image (Fused 2019)
	function loadrasterfused2019() {
		var checkbox = document.getElementById('rst_fused_2019');
		if (checkbox.checked == true) {
			fusedhistoricalOverlay2019.setMap(map);
		} else {
			fusedhistoricalOverlay2019.setMap(null);
		}
	}
	
	//load raster image (Geometric Corrected 2017)
	function loadrastergeometriccorrected2017() {
		var checkbox = document.getElementById('rst_geometriccorrected_2017');
		if (checkbox.checked == true) {
			geometriccorrectedhistoricalOverlay2017.setMap(map);
		} else {
			geometriccorrectedhistoricalOverlay2017.setMap(null);
		}
	}
	
	//load raster image (Geometric Corrected 2019)
	function loadrastergeometriccorrected2019() {
		var checkbox = document.getElementById('rst_geometriccorrected_2019');
		if (checkbox.checked == true) {
			geometriccorrectedhistoricalOverlay2019.setMap(map);
		} else {
			geometriccorrectedhistoricalOverlay2019.setMap(null);
		}
	}
	
	//load raster image (Positive Urban Changes)
	function loadrasterpositiveurbanchanges() {
		var checkbox = document.getElementById('rst_positiveurbanchanges');
		if (checkbox.checked == true) {
			positiveurbanchangeshistoricalOverlay.setMap(map);
		} else {
			positiveurbanchangeshistoricalOverlay.setMap(null);
		}
	}
	
	//load raster image (Negative Urban Changes)
	function loadrasternegativeurbanchanges() {
		var checkbox = document.getElementById('rst_negativeurbanchanges');
		if (checkbox.checked == true) {
			negativeurbanchangeshistoricalOverlay.setMap(map);
		} else {
			negativeurbanchangeshistoricalOverlay.setMap(null);
		}
	}
	
	//load raster image (Positive Non-Urban Changes)
	function loadrasterpositivenonurbanchanges() {
		var checkbox = document.getElementById('rst_positivenonurbanchanges');
		if (checkbox.checked == true) {
			positivenonurbanchangeshistoricalOverlay.setMap(map);
		} else {
			positivenonurbanchangeshistoricalOverlay.setMap(null);
		}
	}
	
	//load raster image (Negative Non-Urban Changes)
	function loadrasternegativenonurbanchanges() {
		var checkbox = document.getElementById('rst_negativenonurbanchanges');
		if (checkbox.checked == true) {
			negativenonurbanchangeshistoricalOverlay.setMap(map);
		} else {
			negativenonurbanchangeshistoricalOverlay.setMap(null);
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
					fillColor : 'yellow',
					strokeColor : 'yellow',
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
					fillColor : 'yellow',
					strokeColor : 'yellow',
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
					strokeColor : 'red',
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
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Building_Info.geojson');
			buildings_layer.setStyle(function(feature) {
				var color = 'blue';
				return ({
					fillColor : color,
					strokeColor : color,
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
										.getProperty('BL_CTY_NAM');
								var BL_REGON_NAME = event.feature
										.getProperty("BL_REGON_N");
								var BL_AREA_NAME = event.feature
										.getProperty("BL_AREA_NA");
								var BL_ZONE_CODE = event.feature
										.getProperty("BL_ZONE_CO");
								var BL_SUB_ZONE_CODE = event.feature
										.getProperty("BL_SUB_ZON");
								var BL_BUILDING_BARCODE = event.feature
										.getProperty("BL_BUILDIN");
								var BL_BUILDING_NO = event.feature
										.getProperty("BL_BUILD_1");
								var BL_NO_FLATS_PER_FLOOR = event.feature
										.getProperty("BL_NO_FLAT");
								var BL_NO_UNITS = event.feature
										.getProperty("BL_NO_UNIT");
								var BL_ARCHITECTURAL_STYLE = event.feature
										.getProperty("BL_ARCHITE");
								var BL_STATUS = event.feature
										.getProperty("BL_STATUS");
								var BL_VIOLATIONS = event.feature
										.getProperty("BL_VIOLATI");
								var BL_TRESPASSING_BUILDING = event.feature
										.getProperty("BL_TRESPAS");
								var BL_TRESPASSING_FENCE = event.feature
										.getProperty("BL_TRESP_1");
								var BL_TRESPASSING_WORKS = event.feature
										.getProperty("BL_TRESP_2");
								var BL_CHANGING_ACTIVITY = event.feature
										.getProperty("BL_CHANGIN");
								var BL_BUILDING_CURR_NO = event.feature
										.getProperty("BL_BUILD_2");
								var CITY_CODE = event.feature
										.getProperty("BL_CITY_CO");
								var AREA_CODE = event.feature
										.getProperty("BL_AREA_CO");
								var REGON_CODE = event.feature
										.getProperty("BL_REGON_C");
								var BL_BLD_MODEL = event.feature
										.getProperty("BL_BL_BLD_");
								var BL_STREET_NAME = event.feature
										.getProperty("BL_BL_STRE");
								var BL_PROPERTY_OWNERSHIP = event.feature
										.getProperty("BL_PROPERT");
								var var1 = event.feature
										.getProperty("BL_Activit");
								var var2 = event.feature
										.getProperty("BL_Activ_1");
								var var3 = event.feature
										.getProperty("BL_VIOLA_1");
								var var4 = event.feature
										.getProperty("BL_NO_FLOO");
								var var5 = event.feature
										.getProperty("BL_CHANG_1");
								var var6 = event.feature
										.getProperty("BL_LAND_US");
								var var7 = event.feature
										.getProperty("BL_LAND__1");
								var var8 = event.feature
										.getProperty("BL_VIOLA_2");
								var var9 = event.feature
										.getProperty("BL_AREA_MO");
								var var10 = event.feature
										.getProperty("BL_NO_FL_1");
								var var11 = event.feature
										.getProperty("BL_NO_FL_2");
								var var12 = event.feature
										.getProperty("BL_NO_VIOL");
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
				var color = 'red';
				return ({
					fillColor : color,
					strokeColor : color,
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
										.getProperty('TR_RELATED');
								var EV_RELATED_BUDLING_BARCODE = event.feature
										.getProperty('TR_RELAT_1');
								var EV_TRESPASSING_TYPE = event.feature
										.getProperty("TR_TRESPAS");
								var EV_TRESPASSING_ACTIVY = event.feature
										.getProperty("TR_TRESP_1");
								var EV_NO_OF_FLOOR = event.feature
										.getProperty("TR_NO_OF_F");
								var EV_ARCHITECTURAL_STYLE = event.feature
										.getProperty("TR_ARCHITE");
								var EV_STATUS = event.feature
										.getProperty("TR_STATUS");
								var EV_COMMENTS = event.feature
										.getProperty("TR_COMMENT");
								var EV_LAND_SIZE = event.feature
										.getProperty("TR_LAND_SI");
								var EV_REPETED_SIZE = event.feature
										.getProperty("TR_REPETED");
								var ZONE_CODE = event.feature
										.getProperty("TR_ZONE_CO");
								var ID_TRESPASSING = event.feature
										.getProperty("TR_ID_TRES");
								var TRESPASSING_CODE = event.feature
										.getProperty("TR_TRESP_2");
								var var13 = event.feature
										.getProperty("TR_TRESP_3");
								var var14 = event.feature
										.getProperty("TR_LAND_US");
								var var15 = event.feature
										.getProperty("TR_LAND__1");
								var var16 = event.feature
										.getProperty("TR_TRESP_4");
								var var17 = event.feature
										.getProperty("TR_LAND__2");
								var var18 = event.feature
										.getProperty("TR_TRESP_5");
								var var19 = event.feature
										.getProperty("TR_TRESP_6");
								var var20 = event.feature
										.getProperty("TR_PATH_PH");
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
										+ "</td><td class=\'rightcolumn\'>تقنين_الاوضاع</td></tr><tr><td class=\'td\'>"
										+ var20
										+ "</td><td class=\'rightcolumn\'>صورة توضح التعدي</td></tr></table>"
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
										.getProperty('باركو');
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
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Center_Line_Roads.geojson');
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
										.getProperty('Street_typ');
								var roads_street_width = event.feature
										.getProperty('Street_wid');
								var roads_street_status = event.feature
										.getProperty('Street_con');
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
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Area_Boundry.geojson');
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
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Zone_Boundry.geojson');
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
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Arady_Mokhatat_1977.geojson');
			general_structure_1977_layer.setStyle(function(feature) {
				return ({
					fillColor : '#FF00FF',
					strokeColor : '#FF00FF',
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
										.getProperty('LAND_USE');
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
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Arady.geojson');
			lands_layer.setStyle(function(feature) {
				return ({
					fillColor : '#A52A2A',
					strokeColor : '#A52A2A',
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
								var lands_usage_acc_structure = event.feature.getProperty('LAND_USE_P');
								var lands_usage_before_2017 = event.feature.getProperty('LAND_USE_2');
								var lands_usage_current = event.feature.getProperty('LAND_USE_C');
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
	
	//load vector layer (Procad Land Marks)
	function loadprocadlandmarks() {
		var checkbox = document.getElementById('vct_procadlandmarks');
		if (checkbox.checked == true) {
			lands_layer = new google.maps.Data({
				map : map
			});
			lands_layer
					.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Land_Marks.geojson');
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
								var land_mark_name = event.feature.getProperty('name');
								var land_mark_land_use = event.feature.getProperty('LAND_USE');
								var land_mark_location = event.feature.getProperty('LOCATION');
								var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
										+ "بيانات المعلم"
										+ "</h1><br><br>"
										+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
										+ land_mark_name
										+ "</td><td class=\'rightcolumn\'>اسم المعلم</td></tr><tr><td class=\'td\'>"
										+ land_mark_land_use
										+ "</td><td class=\'rightcolumn\'>استخدام الأرض</td></tr><tr><td class=\'td\'>"
										+ land_mark_location
										+ "</td><td class=\'rightcolumn\'>الموقع</td></tr></table>"
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
	<div class="container" style="height: 606px; width: 100%;">

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
				style="float: left;" /> <br /><b
				style="float: right; color: black;">المعالم</b><input
				type="checkbox" onclick="loadprocadlandmarks();" id="vct_procadlandmarks"
				style="float: left;" /> <br />
		</div>
		<div id="narss_data_panel">
			<h3 style="color: Blue;">NARSS Data</h3>
			<b style="float: right; color: black;">Fused 2017</b><input
				type="checkbox" onclick="loadrasterfused2017();"
				id="rst_fused_2017" style="float: left;" /> <br /> <b
				style="float: right; color: black;">Fused 2019</b><input
				type="checkbox" onclick="loadrasterfused2019();"
				id="rst_fused_2019" style="float: left;" /> <br /> <b
				style="float: right; color: black;">Geometric Corrected 2017</b><input
				type="checkbox" onclick="loadrastergeometriccorrected2017();"
				id="rst_geometriccorrected_2017" style="float: left;" /> <br /><b
				style="float: right; color: black;">Geometric Corrected 2019</b><input
				type="checkbox" onclick="loadrastergeometriccorrected2019();"
				id="rst_geometriccorrected_2019" style="float: left;" /> <br /><b
				style="float: right; color: black;">Positive Urban Changes</b><input
				type="checkbox" onclick="loadrasterpositiveurbanchanges();"
				id="rst_positiveurbanchanges" style="float: left;" /> <br /><b
				style="float: right; color: black;">Negative Urban Changes</b><input
				type="checkbox" onclick="loadrasternegativeurbanchanges();"
				id="rst_negativeurbanchanges" style="float: left;" /> <br /><b
				style="float: right; color: black;">Positive Non-Urban Changes</b><input
				type="checkbox" onclick="loadrasterpositivenonurbanchanges();"
				id="rst_positivenonurbanchanges" style="float: left;" /> <br /><b
				style="float: right; color: black;">Negative Non-Urban Changes</b><input
				type="checkbox" onclick="loadrasternegativenonurbanchanges();"
				id="rst_negativenonurbanchanges" style="float: left;" /> <br /><b
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