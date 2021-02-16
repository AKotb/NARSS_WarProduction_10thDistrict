<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

<!-- Basic Page Needs ==================================================================================================== -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	var map;
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

		var building_geojson_layer = new google.maps.Data({
			map : map
		});
		building_geojson_layer
				.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Building.geojson');

		var irregularities_geojson_layer = new google.maps.Data({
			map : map
		});
		irregularities_geojson_layer
				.loadGeoJson('http://localhost:8080/10thDistirct_JSON/Irregularities.geojson');

		infowindow = new google.maps.InfoWindow();

		building_geojson_layer.setStyle(function(feature) {
			var color = '#088da5';
			var color_selected = 'red';
			if (feature.getProperty('OBJECTID') == 5) {
				return ({
					fillColor : color,
					strokeColor : color,
					strokeWeight : 2
				});
			} else {
				return ({
					fillColor : color_selected,
					strokeColor : color_selected,
					strokeWeight : 2
				});
			}
		});

		irregularities_geojson_layer.setStyle(function(feature) {
			var color = '#088da5';
			var color_selected = 'red';
			if (feature.getProperty('OBJECTID') == 49) {
				return ({
					fillColor : color_selected,
					strokeColor : color_selected,
					strokeWeight : 2
				});
			} else {
				return ({
					fillColor : color,
					strokeColor : color,
					strokeWeight : 2
				});
			}
		});

		building_geojson_layer
				.addListener(
						'click',
						function(event) {
							building_geojson_layer.revertStyle();
							building_geojson_layer.overrideStyle(event.feature,
									{
										strokeWeight : 4,
										strokeColor : 'red',
										fillColor : 'green'
									});
							var buildingcode = event.feature
									.getProperty('ID_Code_bu');
							var buildingchange = event.feature
									.getProperty("تغيير");
							var buildingstatus = event.feature
									.getProperty("حالة_");
							var buildingstyle = event.feature
									.getProperty("أسلوب");
							var buildingusage = event.feature
									.getProperty("استعم");
							var buildingnoofunits = event.feature
									.getProperty("اجمال");
							var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
									+ "بيانات المبنى"
									+ "</h1><br><br>"
									+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
									+ buildingcode
									+ "</td><td class=\'rightcolumn\'>كود المبنى</td></tr><tr><td class=\'td\'>"
									+ buildingchange
									+ "</td><td class=\'rightcolumn\'>تغيير في المبنى</td></tr><tr><td class=\'td\'>"
									+ buildingstatus
									+ "</td><td class=\'rightcolumn\'>حالة المبنى</td></tr><tr><td class=\'td\'>"
									+ buildingstyle
									+ "</td><td class=\'rightcolumn\'>أسلوب البناء</td></tr><tr><td class=\'td\'>"
									+ buildingusage
									+ "</td><td class=\'rightcolumn\'>استعمال المبنى</td></tr><tr><td class=\'td\'>"
									+ buildingnoofunits
									+ "</td><td class=\'rightcolumn\'>عدد الوحدات</td></tr></table>"
									+ "</div>";
							infowindow.setContent(content);
							infowindow.setPosition(event.latLng);
							infowindow.open(map);
						});

		irregularities_geojson_layer
				.addListener(
						'click',
						function(event) {
							irregularities_geojson_layer.revertStyle();
							irregularities_geojson_layer.overrideStyle(
									event.feature, {
										strokeWeight : 4,
										strokeColor : 'red',
										fillColor : 'green'
									});
							var irregularitycode = event.feature
									.getProperty('id_code');
							var relatedbuildingcode = event.feature
									.getProperty('ID_Code_bu');
							var irregularitycomments = event.feature
									.getProperty("ملاحظ");
							var irregularityactivity = event.feature
									.getProperty("نشاط_");
							var irregularitytype = event.feature
									.getProperty("نوع_ا");
							var irregularitystyle = event.feature
									.getProperty("أسلوب");
							var content = "<div style=\"text-align:center; overflow:hidden;\"><h1 style=\"background-color: #bfd6e4;color:#000;\">"
									+ "بيانات المخالفة"
									+ "</h1><br><br>"
									+ "<table class=\"outertable\" style=\"dir: rtl;\"><tr><td class=\'td\'>"
									+ irregularitycode
									+ "</td><td class=\'rightcolumn\'>كود المخالفة</td></tr><tr><td class=\'td\'>"
									+ relatedbuildingcode
									+ "</td><td class=\'rightcolumn\'>كود المبنى المتعلق بالمخالفة</td></tr><tr><td class=\'td\'>"
									+ irregularitycomments
									+ "</td><td class=\'rightcolumn\'>ملاحظات على المخالفة</td></tr><tr><td class=\'td\'>"
									+ irregularityactivity
									+ "</td><td class=\'rightcolumn\'>نشاط المخالفة</td></tr><tr><td class=\'td\'>"
									+ irregularitytype
									+ "</td><td class=\'rightcolumn\'>نوع المخالفة</td></tr><tr><td class=\'td\'>"
									+ irregularitystyle
									+ "</td><td class=\'rightcolumn\'>أسلوب البناء</td></tr></table>"
									+ "</div>";
							infowindow.setContent(content);
							infowindow.setPosition(event.latLng);
							infowindow.open(map);
						});

		building_geojson_layer.addListener('mouseover', function(event) {
			building_geojson_layer.revertStyle();
			building_geojson_layer.overrideStyle(event.feature, {
				strokeWeight : 4,
				fillColor : 'yellow',
				strokeColor : 'yellow'
			});
		});

		building_geojson_layer.addListener('mouseout', function(event) {
			building_geojson_layer.revertStyle();
		});

		irregularities_geojson_layer.addListener('mouseover', function(event) {
			irregularities_geojson_layer.revertStyle();
			irregularities_geojson_layer.overrideStyle(event.feature, {
				strokeWeight : 4,
				fillColor : 'yellow',
				strokeColor : 'yellow'
			});
		});

		irregularities_geojson_layer.addListener('mouseout', function(event) {
			irregularities_geojson_layer.revertStyle();
		});

	}

	//load raster image (pleiades 2017)
	function loadrasterpleiades2017() {
		var imageBounds = {
				north: 30.0487624164,
		        south: 30.044237623,
		        east: 31.3787343556,
		        west: 31.3709786191
		};
		var historicalOverlay = new google.maps.GroundOverlay('http://localhost:8080/10thDistirct_RASTER/Pleiades_2017_WGS84.jpg', imageBounds);
		var checkbox = document.getElementById('rst_pleiades_2017');
		if (checkbox.checked == true) {
			historicalOverlay.setMap(map);
		} else {
			historicalOverlay.setMap(null);
		}
	}

	//load raster image (pleiades 2019)
	function loadrasterpleiades2019() {
		var imageBounds = {
				north: 30.0487624164,
		        south: 30.044237623,
		        east: 31.3787343556,
		        west: 31.3709786191
		};
		var historicalOverlay = new google.maps.GroundOverlay('http://localhost:8080/10thDistirct_RASTER/Pleiades_2019_WGS84.jpg', imageBounds);
		var checkbox = document.getElementById('rst_pleiades_2019');
		if (checkbox.checked == true) {
			historicalOverlay.setMap(map);
		} else {
			historicalOverlay.setMap(null);
		}
	}
	
	//load raster image (Urban 2017)
	function loadrasterurban2017() {
		var imageBounds = {
				north: 30.0486511163,
		        south: 30.0443899312,
		        east: 31.378659605,
		        west: 31.3711345335
		};
		var historicalOverlay = new google.maps.GroundOverlay('http://localhost:8080/10thDistirct_RASTER/Urban_2017_WGS84.jpg', imageBounds);
		var checkbox = document.getElementById('rst_urban_2017');
		if (checkbox.checked == true) {
			historicalOverlay.setMap(map);
		} else {
			historicalOverlay.setMap(null);
		}
	}
	
	//load raster image (Urban 2019)
	function loadrasterurban2019() {
		var imageBounds = {
				north: 30.0486568393,
		        south: 30.0443958975,
		        east: 31.3786590817,
		        west: 31.3711344398
		};
		var historicalOverlay = new google.maps.GroundOverlay('http://localhost:8080/10thDistirct_RASTER/Urban_2019_WGS84.jpg', imageBounds);
		var checkbox = document.getElementById('rst_urban_2019');
		if (checkbox.checked == true) {
			historicalOverlay.setMap(map);
		} else {
			historicalOverlay.setMap(null);
		}
	}
	
	//load raster image (Urban Changes)
	function loadrasterurbanchanges() {
		var imageBounds = {
				north: 30.0484928525,
		        south: 30.0447005475,
		        east: 31.3786989565,
		        west: 31.371194692
		};
		var historicalOverlay = new google.maps.GroundOverlay('http://localhost:8080/10thDistirct_RASTER/Changes_2017_2019_WGS84.jpg', imageBounds);
		var checkbox = document.getElementById('rst_urban_changes');
		if (checkbox.checked == true) {
			historicalOverlay.setMap(map);
		} else {
			historicalOverlay.setMap(null);
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
</script>
<title>توثيق الحي العاشر - مدينة نصر</title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 779px; width: 100%;">

		<div id="floating-panel">
		<br/>
			<b style="float: right; color: black;">Pleiades 2017</b><input
				type="checkbox" onclick="loadrasterpleiades2017();"
				id="rst_pleiades_2017" style="float: left;" /> <br/> 
			<b style="float: right; color: black;">Pleiades 2019</b><input type="checkbox"
				onclick="loadrasterpleiades2019();" id="rst_pleiades_2019"
				style="float: left;" /> <br/>
			<b style="float: right; color: black;">Urban 2017 (Raster)</b><input type="checkbox"
				onclick="loadrasterurban2017();" id="rst_urban_2017"
				style="float: left;" /> <br/>
			<b style="float: right; color: black;">Urban 2019 (Raster)</b><input type="checkbox"
				onclick="loadrasterurban2019();" id="rst_urban_2019"
				style="float: left;" /> <br/>
			<b style="float: right; color: black;">Urban Changes (Raster)</b><input type="checkbox"
				onclick="loadrasterurbanchanges();" id="rst_urban_changes"
				style="float: left;" /> <br/>
			<b style="float: right; color: black;">Urban 2017 (Vector)</b><input type="checkbox"
				onclick="loadvectorurban2017();" id="vct_urban_2017"
				style="float: left;" /> <br/>
			<b style="float: right; color: black;">Urban 2019 (Vector)</b><input type="checkbox"
				onclick="loadvectorurban2019();" id="vct_urban_2019"
				style="float: left;" /> <br/>
			<b style="float: right; color: black;">Urban Changes (Vector)</b><input type="checkbox"
				onclick="loadvectorurbanchanges();" id="vct_urban_changes"
				style="float: left;" /> <br/>
		</div>

		<div id="map"></div>
	</div>
	<!-- Content ends here ================================================================================================= -->

	<!-- Footer ============================================================================================================ -->
	<jsp:include page="_footer.jsp"></jsp:include>
	<!-- Footer ends here ================================================================================================== -->

</body>
</html>