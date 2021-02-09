<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<title>Add New Key</title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="../../_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 629px; width: 100%;">
		<div align="center">
			<form method="POST" action="addkey">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000;">
					<caption>
						<h2>Add New Key</h2>
					</caption>
					<tr>
						<td>Enter City Code:</td>
						<td><input type="text" name="keyCityCode"></td>
					</tr>
					<tr>
						<td>Enter Area Code:</td>
						<td><input type="text" name="keyAreaCode"></td>
					</tr>
					<tr>
						<td>Enter Region Code:</td>
						<td><input type="text" name="keyRegionCode"></td>
					</tr>
					<tr>
						<td>Enter Zone Code:</td>
						<td><input type="text" name="keyZoneCode"></td>
					</tr>
					<tr>
						<td>Enter Sub-Zone Code:</td>
						<td><input type="text" name="keySubZoneCode"></td>
					</tr>
					<tr>
						<td>Enter Building No:</td>
						<td><input type="text" name="keyBuildingNo"></td>
					</tr>
					<tr>
						<td>Enter Appartement No:</td>
						<td><input type="text" name="keyAppartementNo"></td>
					</tr>
					<tr>
						<td>Enter Key All:</td>
						<td><input type="text" name="keyAll"></td>
					</tr>
					<tr>
						<td>Enter Building Key:</td>
						<td><input type="text" name="keyBuildingKey"></td>
					</tr>
				</table>
				<input type="submit" value="Add Key">
			</form>
			<c:url var="back_home" value="k_backtoindex" />
			<a href="${back_home}">Return to Home Page</a>
		</div>
	</div>
	<!-- Content ends here ================================================================================================= -->

	<!-- Footer ============================================================================================================ -->
	<jsp:include page="../../_footer.jsp"></jsp:include>
	<!-- Footer ends here ================================================================================================== -->

</body>
</html>