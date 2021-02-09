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
<title>Show All Buildings</title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="../../_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 629px; width: 100%;">
		<div align="center">
			<table border="1" cellpadding="15"
				style="color: #000000; border-spacing: 20px; border-collapse: unset;">
				<caption>
					<h2>List of Buildings</h2>
				</caption>
				<tr>
					<th>Building Barcode</th>
					<th>Buidling Number</th>
					<th>Building Current Number</th>
					<th>Building Model</th>
					<th>Number Of Floors</th>
					<th>Number Of Flats Per Floor</th>
					<th>Number Of Units</th>
					<th>Building Usage</th>
					<th>Building Architectural Style</th>
					<th>Building Status</th>
					<th>Building Violations</th>
					<th>Trespassing Building</th>
					<th>Trespassing Fence</th>
					<th>Trespassing Works</th>
					<th>Changing Activity</th>
					<th>Buidling Street Name</th>
					<th>Property Ownership</th>
					<th>City Code</th>
					<th>Area Code</th>
					<th>Region Code</th>
					<th>Zone Code</th>
					<th>Sub-Zone Code</th>
					<th>Last Contract Date</th>
					<th>Change Activity Date</th>
					<th>Action</th>
				</tr>
				<c:forEach var="buildingInformation" items="${msg}">
					<c:url var="deletelink" value="deletebuildinginformation">
						<c:param name="bibb"
							value="${buildingInformation.biBuildingBarcode}"></c:param>
					</c:url>
					<tr>
						<td><c:out value="${buildingInformation.biBuildingBarcode}" /></td>
						<td><c:out value="${buildingInformation.biBuildingNo}" /></td>
						<td><c:out value="${buildingInformation.biBuidlingCurrentNo}" /></td>
						<td><c:out value="${buildingInformation.biBuildingModel}" /></td>
						<td><c:out value="${buildingInformation.biNumberOfFloors}" /></td>
						<td><c:out
								value="${buildingInformation.biNumberOfFlatsPerFloor}" /></td>
						<td><c:out value="${buildingInformation.biNumberOfUnits}" /></td>
						<td><c:out value="${buildingInformation.biUsage}" /></td>
						<td><c:out
								value="${buildingInformation.biArchitecturalStyle}" /></td>
						<td><c:out value="${buildingInformation.biStatus}" /></td>
						<td><c:out value="${buildingInformation.biViolations}" /></td>
						<td><c:out
								value="${buildingInformation.biTrespassingBuilding}" /></td>
						<td><c:out value="${buildingInformation.biTrespassingFence}" /></td>
						<td><c:out value="${buildingInformation.biTrespassingWorks}" /></td>
						<td><c:out value="${buildingInformation.biChangingActivity}" /></td>
						<td><c:out value="${buildingInformation.biStreetName}" /></td>
						<td><c:out value="${buildingInformation.biPropertyOwnership}" /></td>
						<td><c:out value="${buildingInformation.biCityCode}" /></td>
						<td><c:out value="${buildingInformation.biAreaCode}" /></td>
						<td><c:out value="${buildingInformation.biRegionCode}" /></td>
						<td><c:out value="${buildingInformation.biZoneCode}" /></td>
						<td><c:out value="${buildingInformation.biSubZoneCode}" /></td>
						<td><c:out value="${buildingInformation.biLastContractDate}" /></td>
						<td><c:out
								value="${buildingInformation.biChangeActivityDate}" /></td>
						<td><a href="${deletelink}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
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