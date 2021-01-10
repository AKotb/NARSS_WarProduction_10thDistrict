<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Zones</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of Zones</h2>
			</caption>
			<tr>
				<th>City Code</th>
				<th>Area Code</th>
				<th>Region Code</th>
				<th>Zone Code</th>
				<th>Zone Map</th>
				<th>Action</th>
			</tr>
			<c:forEach var="zone" items="${msg}">
				<c:url var="deletelink" value="deletezone">
					<c:param name="zci" value="${zone.zonCity}"></c:param>
					<c:param name="ac" value="${zone.areaCode}"></c:param>
					<c:param name="rc" value="${zone.regionCode}"></c:param>
					<c:param name="zc" value="${zone.zoneCode}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${zone.zonCity}" /></td>
					<td><c:out value="${zone.areaCode}" /></td>
					<td><c:out value="${zone.regionCode}" /></td>
					<td><c:out value="${zone.zoneCode}" /></td>
					<td><c:out value="${zone.zoneMap}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="z_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>