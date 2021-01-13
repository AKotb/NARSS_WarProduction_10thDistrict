<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Key</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="addkey">
			<table style="align: center; background-color: #F1E6E6;">
				<caption>
					<h2>Add New Key</h2>
				</caption>
				<tr>
					<td>Enter City Code:</td>
					<td><input type="text" name="keyCityCode"></td>
				</tr>
				<tr>
					<td>Enter Area Code:</td>
					<td><input type="text" name="keyAreaCode"></td>
				</tr>
				<tr>
					<td>Enter Region Code:</td>
					<td><input type="text" name="keyRegionCode"></td>
				</tr>
				<tr>
					<td>Enter Zone Code:</td>
					<td><input type="text" name="keyZoneCode"></td>
				</tr>
				<tr>
					<td>Enter Sub-Zone Code:</td>
					<td><input type="text" name="keySubZoneCode"></td>
				</tr>
				<tr>
					<td>Enter Building No:</td>
					<td><input type="text" name="keyBuildingNo"></td>
				</tr>
				<tr>
					<td>Enter Appartement No:</td>
					<td><input type="text" name="keyAppartementNo"></td>
				</tr>
				<tr>
					<td>Enter Key All:</td>
					<td><input type="text" name="keyAll"></td>
				</tr>
				<tr>
					<td>Enter Building Key:</td>
					<td><input type="text" name="keyBuildingKey"></td>
				</tr>
			</table>
			<input type="submit" value="Add Key">
		</form>
		<c:url var="back_home" value="k_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>