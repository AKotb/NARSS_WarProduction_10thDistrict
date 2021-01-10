<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Sub-Zone</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="addsubzone">
			<table style="align: center; background-color: #F1E6E6;">
				<caption>
					<h2>Add New Sub-Zone</h2>
				</caption>
				<tr>
					<td>Enter City Code:</td>
					<td><input type="text" name="azCity"></td>
				</tr>
				<tr>
					<td>Enter Area Code:</td>
					<td><input type="text" name="azAreaCode"></td>
				</tr>
				<tr>
					<td>Enter Region Code:</td>
					<td><input type="text" name="azRegionCode"></td>
				</tr>
				<tr>
					<td>Enter Zone Code:</td>
					<td><input type="text" name="azZoneCode"></td>
				</tr>
				<tr>
					<td>Enter Sub-Zone Code:</td>
					<td><input type="text" name="azSubZoneCode"></td>
				</tr>
				<tr>
					<td>Enter Sub-Zone Map:</td>
					<td><input type="text" name="azSubZoneMap"></td>
				</tr>
			</table>
			<input type="submit" value="Add Sub-Zone">
		</form>
		<c:url var="back_home" value="sz_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>