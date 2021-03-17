<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<title>لوحة الإعدادات</title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 606px;">
		<h2 style="text-align: center;">مرحباً بك في لوحة إعدادات النظام</h2>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_city_codes" var="manage_citycodes" />
			<h2>
				<a href="${manage_citycodes}">  اعدادات المحافظات / المدن </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_area_codes" var="manage_areacodes" />
			<h2>
				<a href="${manage_areacodes}"> اعدادات الأحياء </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_region_codes" var="manage_regioncodes" />
			<h2>
				<a href="${manage_regioncodes}"> اعدادات المناطق داخل الأحياء </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_zones" var="manage_zones" />
			<h2>
				<a href="${manage_zones}"> اعدادات المربعات </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_sub_zones" var="manage_subzones" />
			<h2>
				<a href="${manage_subzones}"> اعدادات المربعات الفرعية </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_keys" var="manage_keys" />
			<h2>
				<a href="${manage_keys}"> اعدادات ربط البيانات </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_buildings_information"
				var="manage_buildingsinformation" />
			<h2>
				<a href="${manage_buildingsinformation}"> اعدادات المباني / العقارات </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_units_information" var="manage_unitsinformation" />
			<h2>
				<a href="${manage_unitsinformation}"> اعدادات الوحدات / الشقق </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_external_violations"
				var="manage_externalviolations" />
			<h2>
				<a href="${manage_externalviolations}"> اعدادات العقارات المخالفة المستقلة </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_owners_information"
				var="manage_ownersinformation" />
			<h2>
				<a href="${manage_ownersinformation}"> اعدادات الملاك </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_authorizations" var="manage_authorizations" />
			<h2>
				<a href="${manage_authorizations}"> اعدادات التوكيلات </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="manage_concessions" var="manage_concessions" />
			<h2>
				<a href="${manage_concessions}"> اعدادات التنازلات </a>
			</h2>
		</div>
		<div
			style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
			<c:url value="/" var="backtohomepage" />
			<h2>
				<a href="${backtohomepage}"> عودة إلى الصفحة الرئيسية </a>
			</h2>
		</div>
	</div>
	<!-- Content ends here ================================================================================================= -->

	<!-- Footer ============================================================================================================ -->
	<jsp:include page="_footer.jsp"></jsp:include>
	<!-- Footer ends here ================================================================================================== -->

</body>
</html>