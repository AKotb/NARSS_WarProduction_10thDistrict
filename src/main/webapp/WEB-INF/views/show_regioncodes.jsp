<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Region Codes</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of Region Codes</h2>
			</caption>
			<tr>
				<th>City Code</th>
				<th>Area Code</th>
				<th>Region Code</th>
				<th>Region Name</th>
				<th>Region Map</th>
				<th>Action</th>
			</tr>
			<c:forEach var="regionCode" items="${msg}">
				<c:url var="deletelink" value="deleteregioncode">
					<c:param name="cc" value="${regionCode.rcCityCode}"></c:param>
					<c:param name="ac" value="${regionCode.rcAreaCode}"></c:param>
					<c:param name="rc" value="${regionCode.rcRegionCode}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${regionCode.rcCityCode}" /></td>
					<td><c:out value="${regionCode.rcAreaCode}" /></td>
					<td><c:out value="${regionCode.rcRegionCode}" /></td>
					<td><c:out value="${regionCode.rcRegionName}" /></td>
					<td><c:out value="${regionCode.rcRegionMap}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="rc_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>