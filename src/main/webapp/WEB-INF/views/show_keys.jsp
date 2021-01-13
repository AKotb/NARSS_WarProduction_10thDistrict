<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Keys</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of Keys</h2>
			</caption>
			<tr>
				<th>City Code</th>
				<th>Area Code</th>
				<th>Region Code</th>
				<th>Zone Code</th>
				<th>Sub-Zone Code</th>
				<th>Building No</th>
				<th>Appartement No</th>
				<th>Key All</th>
				<th>Building Key</th>
				<th>Action</th>
			</tr>
			<c:forEach var="key" items="${msg}">
				<c:url var="deletelink" value="deletekey">
					<c:param name="ka" value="${key.keyAll}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${key.keyCityCode}" /></td>
					<td><c:out value="${key.keyAreaCode}" /></td>
					<td><c:out value="${key.keyRegionCode}" /></td>
					<td><c:out value="${key.keyZoneCode}" /></td>
					<td><c:out value="${key.keySubZoneCode}" /></td>
					<td><c:out value="${key.keyBuildingNo}" /></td>
					<td><c:out value="${key.keyAppartementNo}" /></td>
					<td><c:out value="${key.keyAll}" /></td>
					<td><c:out value="${key.keyBuildingKey}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="k_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>