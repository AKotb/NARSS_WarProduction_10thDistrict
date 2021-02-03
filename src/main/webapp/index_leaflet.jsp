<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<link rel="stylesheet" href="resources/css/prettyPhoto.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="resources/css/leaflet.css" />
<link rel="stylesheet" href="resources/css/warproductionalhayalaasher.css" />

<!-- Favicons ==================================================================================================== -->
<link rel="shortcut icon" href="resources/images/favicon.png">
<link rel="apple-touch-icon" href="resources/images/apple-touch-icon.png">
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
<script src="resources/js/jquery.flexslider-min.js" type="text/javascript"></script>
<script type="text/javascript" src="resources/js/modernizr.custom.29473.js"></script>
<!-- Business js files-->
<script src="resources/js/leaflet.js"></script>
<script src="resources/js/esri-leaflet.js"></script>
<script src="resources/js/leaflet.ajax.min.js"></script>

<title>NARSS_WarProduction_10thDistrict</title>
</head>
<body>
	<!-- Home - Content Part ==================================================================================================== -->
	<div id="header">
		<div class="container header">
			<!-- Header | Logo, Menu
		================================================== -->
			<header>
			<div class="logo">
				<a href="index.jsp"><img src="resources/images/logo.png" alt="" /></a>
			</div>
			<div class="mainmenu">
				<div id="mainmenu">
					<ul class="sf-menu">
						<li><a href="index.jsp" id="visited"><span class="home"><img
									src="resources/images/home.png" alt="" /></span>Home</a></li>
						<li><a href="about.html"><span class="home"><img
									src="resources/images/about.png" alt="" /></span>About</a></li>
						<li><a href="portfolio.html"><span class="home"><img
									src="resources/images/portfolio.png" alt="" /></span>Portfolio</a>
							<ul>
								<li><a href="gallery.html">Portfolio Gallery</a></li>
							</ul></li>
						<li><a href="blog.html"><span class="home"><img
									src="resources/images/blog.png" alt="" /></span>Blog</a>
							<ul>
								<li><a href="singleblog.html">Single Post</a></li>
							</ul></li>
						<li><a href="features.html"><span class="home"><img
									src="resources/images/features.png" alt="" /></span>features</a></li>
						<li><a href="contact.html"><span class="home"><img
									src="resources/images/contact.png" alt="" /></span>Contact</a></li>
						<li><a href="dashboard.jsp"><span class="home"><img
									src="resources/images/dashboard.png" alt="" /></span>DashBoard</a></li>
					</ul>
				</div>

				<!-- Responsive Menu -->

				<form id="responsive-menu" action="#" method="post">
					<select>
						<option value="">Navigation</option>
						<option value="index.jsp">Home</option>
						<option value="about.html">About</option>
						<option value="portfolio.html">Portfolio</option>
						<option value="gallery.html">Portfolio Gallery</option>
						<option value="blog.html">Blog</option>
						<option value="singleblog.html">Single Post</option>
						<option value="features.html">Features</option>
						<option value="contact.html">Contact</option>
						<option value="dashboard.jsp">DashBoard</option>
					</select>
				</form>
			</div>
			</header>
		</div>
	</div>

	<!-- Home Content Part - Box One ==================================================================================================== -->
	<div class="container" style="height: 629px; width: 100%;">
			<div id="map"></div>

			<div id="basemaps-wrapper" class="leaflet-bar">
				<select id="basemaps">
					<option value="Imagery">Imagery</option>
					<option value="Topographic">Topographic</option>
					<option value="Streets">Streets</option>
					<option value="ImageryClarity">Imagery (Clarity)</option>
				</select>
			</div>
			<script>
				var map = L.map('map').setView([ 30.047793, 31.3712975 ], 19);
				var layer = L.esri.basemapLayer('Imagery').addTo(map);
				var layerLabels;

				function setBasemap(basemap) {
					if (layer) {
						map.removeLayer(layer);
					}

					layer = L.esri.basemapLayer(basemap);

					map.addLayer(layer);

					if (layerLabels) {
						map.removeLayer(layerLabels);
					}if (basemap.includes('Imagery')) {
						layerLabels = L.esri.basemapLayer('ImageryLabels');
						map.addLayer(layerLabels);
					}
				}

				document.querySelector('#basemaps').addEventListener('change',
						function(e) {
							var basemap = e.target.value;
							setBasemap(basemap);
						});

				var buildinggeojsonLayer = new L.GeoJSON.AJAX(
						"http://localhost:8080/10thDistirct_JSON/Building.geojson");
				buildinggeojsonLayer.addTo(map);
				var irregularitiesgeojsonLayer = new L.GeoJSON.AJAX(
					"http://localhost:8080/10thDistirct_JSON/Irregularities.geojson");
				irregularitiesgeojsonLayer.addTo(map);
			</script>
	</div>

	<!-- Copyright ==================================================================================================== -->
	<div id="copyright">
		<div class="container">
			<div class="eleven columns alpha">
				<p class="copyright">
					&copy; Copyright 2012. &quot;Proximet&quot; by <a
						href="http://www.anarieldesign.com/">Anariel</a>. All rights
					reserved.
				</p>
			</div>
			<div class="five columns omega">
				<section class="socials">
				<ul class="socials fr">
					<li><a href="#"><img src="resources/images/socials/twitter.png"
							class="poshytip" title="Twitter" alt="" /></a></li>
					<li><a href="#"><img src="resources/images/socials/facebook.png"
							class="poshytip" title="Facebook" alt="" /></a></li>
					<li><a href="#"><img src="resources/images/socials/google.png"
							class="poshytip" title="Google" alt="" /></a></li>
					<li><a href="#"><img src="resources/images/socials/dribbble.png"
							class="poshytip" title="Dribbble" alt="" /></a></li>
				</ul>
				</section>
			</div>
		</div>
		<!-- container ends here -->
	</div>
	<!-- copyright ends here -->
	<!-- End Document================================================== -->
</body>
</html>