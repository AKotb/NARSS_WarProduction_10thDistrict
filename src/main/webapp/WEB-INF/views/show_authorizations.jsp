<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Authorizations</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of Authorizations</h2>
			</caption>
			<tr>
				<th>Unit Barcode</th>
				<th>Delegation Number</th>
				<th>Delegation Date</th>
				<th>Delegation Issued Place</th>
				<th>Delegation Type</th>
				<th>Delegator Name</th>
				<th>Delegator ID</th>
				<th>Delegate to Name</th>
				<th>Delegate to ID</th>
				<th>Action</th>
			</tr>
			<c:forEach var="authorization" items="${msg}">
				<c:url var="deletelink" value="deleteauthorization">
					<c:param name="madn" value="${authorization.maDelegationNo}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${authorization.maUnitBarcode}" /></td>
					<td><c:out value="${authorization.maDelegationNo}" /></td>
					<td><c:out value="${authorization.maDelegationDate}" /></td>
					<td><c:out value="${authorization.maDelegationIssuedPlace}" /></td>
					<td><c:out value="${authorization.maDelegationType}" /></td>
					<td><c:out value="${authorization.maDelegatorName}" /></td>
					<td><c:out value="${authorization.maDelegatorId}" /></td>
					<td><c:out value="${authorization.maDelegateToName}" /></td>
					<td><c:out value="${authorization.maDelegateToId}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="auz_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>