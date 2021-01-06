<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Area Codes</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of Area Codes</h2>
			</caption>
			<tr>
				<th>City Code</th>
				<th>Area Code</th>
				<th>Area Name</th>
				<th>Area Map</th>
				<th>Action</th>
			</tr>
			<c:forEach var="areaCode" items="${msg}">
				<c:url var="deletelink" value="deleteareacode">
					<c:param name="cc" value="${areaCode.arCityCode}"></c:param>
					<c:param name="ac" value="${areaCode.arAreaCode}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${areaCode.arCityCode}" /></td>
					<td><c:out value="${areaCode.arAreaCode}" /></td>
					<td><c:out value="${areaCode.arAreaName}" /></td>
					<td><c:out value="${areaCode.arAreaMap}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="ar_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>