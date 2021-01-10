<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Sub-Zones</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of Sub-Zones</h2>
			</caption>
			<tr>
				<th>City Code</th>
				<th>Area Code</th>
				<th>Region Code</th>
				<th>Zone Code</th>
				<th>Sub-Zone Code</th>
				<th>Sub-Zone Map</th>
				<th>Action</th>
			</tr>
			<c:forEach var="subZone" items="${msg}">
				<c:url var="deletelink" value="deletesubzone">
					<c:param name="azc" value="${subZone.azCity}"></c:param>
					<c:param name="azac" value="${subZone.azAreaCode}"></c:param>
					<c:param name="azrc" value="${subZone.azRegionCode}"></c:param>
					<c:param name="azzc" value="${subZone.azZoneCode}"></c:param>
					<c:param name="azszc" value="${subZone.azSubZoneCode}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${subZone.azCity}" /></td>
					<td><c:out value="${subZone.azAreaCode}" /></td>
					<td><c:out value="${subZone.azRegionCode}" /></td>
					<td><c:out value="${subZone.azZoneCode}" /></td>
					<td><c:out value="${subZone.azSubZoneCode}" /></td>
					<td><c:out value="${subZone.azSubZoneMap}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="sz_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>