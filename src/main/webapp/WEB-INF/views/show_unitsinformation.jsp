<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Units</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of Units</h2>
			</caption>
			<tr>
				<th>Building Number</th>
				<th>Unit Number</th>
				<th>Building Type</th>
				<th>Floor Number</th>
				<th>Current Owner Name</th>
				<th>Deliver Date</th>
				<th>Assigned Name</th>
				<th>Assign Date</th>
				<th>Unit Size</th>
				<th>Unit Price</th>
				<th>Floor</th>
				<th>Comments on Unit</th>
				<th>Unit Barcode</th>
				<th>Change Activity</th>
				<th>Trespassing Building</th>
				<th>Extend of Violation</th>
				<th>Violation Size</th>
				<th>Trespassing Fence</th>
				<th>Trespassing Works</th>
				<th>Main Activity</th>
				<th>Building Barcode</th>
				<th>Current Owner ID</th>
				<th>Trespassing Fence Size</th>
				<th>Trespassing Building Size</th>
				<th>Action</th>
			</tr>
			<c:forEach var="unitInformation" items="${msg}">
				<c:url var="deletelink" value="deleteunitinformation">
					<c:param name="fltb" value="${unitInformation.fltBarcode}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${unitInformation.fltBuildingNo}" /></td>
					<td><c:out value="${unitInformation.fltUnitNo}" /></td>
					<td><c:out value="${unitInformation.fltBuildType}" /></td>
					<td><c:out value="${unitInformation.fltFloorNo}" /></td>
					<td><c:out value="${unitInformation.fltCurrentOwnerName}" /></td>
					<td><c:out value="${unitInformation.fltDeliverDate}" /></td>
					<td><c:out value="${unitInformation.fltAssignedName}" /></td>
					<td><c:out value="${unitInformation.fltAssignDate}" /></td>
					<td><c:out value="${unitInformation.fltUnitSize}" /></td>
					<td><c:out value="${unitInformation.fltUnitPrice}" /></td>
					<td><c:out value="${unitInformation.fltFloor}" /></td>
					<td><c:out value="${unitInformation.fltComments}" /></td>
					<td><c:out value="${unitInformation.fltBarcode}" /></td>
					<td><c:out value="${unitInformation.fltChangeActivity}" /></td>
					<td><c:out value="${unitInformation.fltTrespassingBuidling}" /></td>
					<td><c:out value="${unitInformation.fltExtendOfViolation}" /></td>
					<td><c:out value="${unitInformation.fltViolationSize}" /></td>
					<td><c:out value="${unitInformation.fltTrespassingFence}" /></td>
					<td><c:out value="${unitInformation.fltTrespassingWorks}" /></td>
					<td><c:out value="${unitInformation.fltMainActivity}" /></td>
					<td><c:out value="${unitInformation.fltBuildingBarcode}" /></td>
					<td><c:out value="${unitInformation.fltCurrentOwnerID}" /></td>
					<td><c:out value="${unitInformation.fltTrespassingFenceSize}" /></td>
					<td><c:out value="${unitInformation.fltTrespassingBuidlingSize}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="ui_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>