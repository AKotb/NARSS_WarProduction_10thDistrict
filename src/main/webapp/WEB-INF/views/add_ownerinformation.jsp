<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Owner</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="addownerinformation">
			<table style="align: center; background-color: #F1E6E6;">
				<caption>
					<h2>Add New Owner</h2>
				</caption>
				<tr>
					<td>Enter Unit Barcode:</td>
					<td><input type="text" name="oiUnitBarcode"></td>
				</tr>
				<tr>
					<td>Enter Building Number:</td>
					<td><input type="text" name="oiBuildingNo"></td>
				</tr>
				<tr>
					<td>Enter Unit Number:</td>
					<td><input type="text" name="oiUnitNo"></td>
				</tr>
				<tr>
					<td>Enter Owner Sequence:</td>
					<td><input type="text" name="oiOwnerSequence"></td>
				</tr>
				<tr>
					<td>Enter Owner Name:</td>
					<td><input type="text" name="oiOwnerName"></td>
				</tr>
				<tr>
					<td>Enter Owner ID:</td>
					<td><input type="text" name="oiOwnerId"></td>
				</tr>
			</table>
			<input type="submit" value="Add Owner Information">
		</form>
		<c:url var="back_home" value="oi_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>