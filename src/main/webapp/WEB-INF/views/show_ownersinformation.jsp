<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Owners</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of Owners</h2>
			</caption>
			<tr>
				<th>Unit Barcode</th>
				<th>Building Number</th>
				<th>Unit Number</th>
				<th>Owner Sequence</th>
				<th>Owner Name</th>
				<th>Owner ID</th>
				<th>Action</th>
			</tr>
			<c:forEach var="ownerInformation" items="${msg}">
				<c:url var="deletelink" value="deleteownerinformation">
					<c:param name="oios" value="${ownerInformation.oiOwnerSequence}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${ownerInformation.oiUnitBarcode}" /></td>
					<td><c:out value="${ownerInformation.oiBuildingNo}" /></td>
					<td><c:out value="${ownerInformation.oiUnitNo}" /></td>
					<td><c:out value="${ownerInformation.oiOwnerSequence}" /></td>
					<td><c:out value="${ownerInformation.oiOwnerName}" /></td>
					<td><c:out value="${ownerInformation.oiOwnerId}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="oi_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>