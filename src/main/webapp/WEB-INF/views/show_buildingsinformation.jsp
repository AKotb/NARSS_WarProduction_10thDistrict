<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Buildings</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
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
					<c:param name="bibb" value="${buildingInformation.biBuildingBarcode}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${buildingInformation.biBuildingBarcode}" /></td>
					<td><c:out value="${buildingInformation.biBuildingNo}" /></td>
					<td><c:out value="${buildingInformation.biBuidlingCurrentNo}" /></td>
					<td><c:out value="${buildingInformation.biBuildingModel}" /></td>
					<td><c:out value="${buildingInformation.biNumberOfFloors}" /></td>
					<td><c:out value="${buildingInformation.biNumberOfFlatsPerFloor}" /></td>
					<td><c:out value="${buildingInformation.biNumberOfUnits}" /></td>
					<td><c:out value="${buildingInformation.biUsage}" /></td>
					<td><c:out value="${buildingInformation.biArchitecturalStyle}" /></td>
					<td><c:out value="${buildingInformation.biStatus}" /></td>
					<td><c:out value="${buildingInformation.biViolations}" /></td>
					<td><c:out value="${buildingInformation.biTrespassingBuilding}" /></td>
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
					<td><c:out value="${buildingInformation.biChangeActivityDate}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="bi_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>