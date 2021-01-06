<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Region Code</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="addregioncode">
			<table style="align: center; background-color: #F1E6E6;">
				<caption>
					<h2>Add New Region Code</h2>
				</caption>
				<tr>
					<td>Enter City Code:</td>
					<td><input type="text" name="rcCityCode"></td>
				</tr>
				<tr>
					<td>Enter Area Code:</td>
					<td><input type="text" name="rcAreaCode"></td>
				</tr>
				<tr>
					<td>Enter Region Code:</td>
					<td><input type="text" name="rcRegionCode"></td>
				</tr>
				<tr>
					<td>Enter Region Name:</td>
					<td><input type="text" name="rcRegionName"></td>
				</tr>
				<tr>
					<td>Enter Region Map:</td>
					<td><input type="text" name="rcRegionMap"></td>
				</tr>
			</table>
			<input type="submit" value="Add Region Code">
		</form>
		<c:url var="back_home" value="rc_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>