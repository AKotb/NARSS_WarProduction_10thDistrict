<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Concession</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="addconcession">
			<table style="align: center; background-color: #F1E6E6;">
				<caption>
					<h2>Add New Concession</h2>
				</caption>
				<tr>
					<td>Enter Unit Barcode:</td>
					<td><input type="text" name="coUnitBarcode"></td>
				</tr>
				<tr>
					<td>Enter Concession Serial:</td>
					<td><input type="text" name="coConcessionSerial"></td>
				</tr>
				<tr>
					<td>Enter Concession from Name:</td>
					<td><input type="text" name="coConcessionFromName"></td>
				</tr>
				<tr>
					<td>Enter Concession from ID:</td>
					<td><input type="text" name="coConcessionFromId"></td>
				</tr>
				<tr>
					<td>Enter Concession to Name:</td>
					<td><input type="text" name="coConcessionToName"></td>
				</tr>
				<tr>
					<td>Enter Concession to ID:</td>
					<td><input type="text" name="coConcessionToId"></td>
				</tr>
				<tr>
					<td>Enter Concession Date:</td>
					<td><input type="text" name="coConcessionDate"></td>
				</tr>
			</table>
			<input type="submit" value="Add Concession">
		</form>
		<c:url var="back_home" value="conc_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>