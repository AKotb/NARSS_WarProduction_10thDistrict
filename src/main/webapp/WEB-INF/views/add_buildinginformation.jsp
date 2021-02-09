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
<title>Add New Building</title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="../../_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 629px; width: 100%;">
		<div align="center">
			<form method="POST" action="addbuildinginformation">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000;">
					<caption>
						<h2>Add New Buidling</h2>
					</caption>
					<tr>
						<td>Enter Building Barcode:</td>
						<td><input type="text" name="biBuildingBarcode"></td>
					</tr>
					<tr>
						<td>Enter Buidling Number:</td>
						<td><input type="text" name="biBuildingNo"></td>
					</tr>
					<tr>
						<td>Enter Building Current Number:</td>
						<td><input type="text" name="biBuidlingCurrentNo"></td>
					</tr>
					<tr>
						<td>Enter Building Model:</td>
						<td><input type="text" name="biBuildingModel"></td>
					</tr>
					<tr>
						<td>Enter Number Of Floors:</td>
						<td><input type="text" name="biNumberOfFloors"></td>
					</tr>
					<tr>
						<td>Enter Number Of Flats Per Floor:</td>
						<td><input type="text" name="biNumberOfFlatsPerFloor"></td>
					</tr>
					<tr>
						<td>Enter Number Of Units:</td>
						<td><input type="text" name="biNumberOfUnits"></td>
					</tr>
					<tr>
						<td>Enter Building Usage:</td>
						<td><input type="text" name="biUsage"></td>
					</tr>
					<tr>
						<td>Enter Building Architectural Style:</td>
						<td><input type="text" name="biArchitecturalStyle"></td>
					</tr>
					<tr>
						<td>Enter Building Status:</td>
						<td><input type="text" name="biStatus"></td>
					</tr>
					<tr>
						<td>Enter Building Violations:</td>
						<td><input type="text" name="biViolations"></td>
					</tr>
					<tr>
						<td>Enter Trespassing Building:</td>
						<td><input type="text" name="biTrespassingBuilding"></td>
					</tr>
					<tr>
						<td>Enter Trespassing Fence:</td>
						<td><input type="text" name="biTrespassingFence"></td>
					</tr>
					<tr>
						<td>Enter Trespassing Works:</td>
						<td><input type="text" name="biTrespassingWorks"></td>
					</tr>
					<tr>
						<td>Enter Changing Activity:</td>
						<td><input type="text" name="biChangingActivity"></td>
					</tr>
					<tr>
						<td>Enter Buidling Street Name:</td>
						<td><input type="text" name="biStreetName"></td>
					</tr>
					<tr>
						<td>Enter Property Ownership:</td>
						<td><input type="text" name="biPropertyOwnership"></td>
					</tr>
					<tr>
						<td>Enter City Code:</td>
						<td><input type="text" name="biCityCode"></td>
					</tr>
					<tr>
						<td>Enter Area Code:</td>
						<td><input type="text" name="biAreaCode"></td>
					</tr>
					<tr>
						<td>Enter Region Code:</td>
						<td><input type="text" name="biRegionCode"></td>
					</tr>
					<tr>
						<td>Enter Zone Code:</td>
						<td><input type="text" name="biZoneCode"></td>
					</tr>
					<tr>
						<td>Enter Sub-Zone Code:</td>
						<td><input type="text" name="biSubZoneCode"></td>
					</tr>
					<tr>
						<td>Enter Last Contract Date:</td>
						<td><input type="text" name="biLastContractDate"></td>
					</tr>
					<tr>
						<td>Enter Change Activity Date:</td>
						<td><input type="text" name="biChangeActivityDate"></td>
					</tr>
				</table>
				<input type="submit" value="Add Building Information">
			</form>
			<c:url var="back_home" value="bi_backtoindex" />
			<a href="${back_home}">Return to Home Page</a>
		</div>
	</div>
	<!-- Content ends here ================================================================================================= -->

	<!-- Footer ============================================================================================================ -->
	<jsp:include page="../../_footer.jsp"></jsp:include>
	<!-- Footer ends here ================================================================================================== -->

</body>
</html>