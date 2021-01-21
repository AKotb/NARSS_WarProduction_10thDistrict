<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All External Violations</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of External Violations</h2>
			</caption>
			<tr>
				<th>Violation Number</th>
				<th>Related Building Barcode</th>
				<th>Violation Type</th>
				<th>Violation Activity</th>
				<th>Number Of Floors</th>
				<th>Architectural Style</th>
				<th>Violation Status</th>
				<th>Violation Land Size</th>
				<th>Violation Repeated Size</th>
				<th>Related Building Number</th>
				<th>Action</th>
			</tr>
			<c:forEach var="externalViolation" items="${msg}">
				<c:url var="deletelink" value="deleteexternalviolation">
					<c:param name="evnvn" value="${externalViolation.evNewViolationNo}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${externalViolation.evNewViolationNo}" /></td>
					<td><c:out value="${externalViolation.evRelatedBuildingBarcode}" /></td>
					<td><c:out value="${externalViolation.evViolationType}" /></td>
					<td><c:out value="${externalViolation.evViolationActivity}" /></td>
					<td><c:out value="${externalViolation.evNumberOfFloors}" /></td>
					<td><c:out value="${externalViolation.evArchitecturalStyle}" /></td>
					<td><c:out value="${externalViolation.evStatus}" /></td>
					<td><c:out value="${externalViolation.ezLandSize}" /></td>
					<td><c:out value="${externalViolation.exRepeatedSize}" /></td>
					<td><c:out value="${externalViolation.exRelatedBuildingNo}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="ev_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>