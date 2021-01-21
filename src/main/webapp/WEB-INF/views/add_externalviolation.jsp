<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New External Violation</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="addexternalviolation">
			<table style="align: center; background-color: #F1E6E6;">
				<caption>
					<h2>Add New External Violation</h2>
				</caption>
				<tr>
					<td>Enter Violation Number:</td>
					<td><input type="text" name="evNewViolationNo"></td>
				</tr>
				<tr>
					<td>Enter Related Building Barcode:</td>
					<td><input type="text" name="evRelatedBuildingBarcode"></td>
				</tr>
				<tr>
					<td>Enter Violation Type:</td>
					<td><input type="text" name="evViolationType"></td>
				</tr>
				<tr>
					<td>Enter Violation Activity:</td>
					<td><input type="text" name="evViolationActivity"></td>
				</tr>
				<tr>
					<td>Enter Number Of Floors:</td>
					<td><input type="text" name="evNumberOfFloors"></td>
				</tr>
				<tr>
					<td>Enter Architectural Style:</td>
					<td><input type="text" name="evArchitecturalStyle"></td>
				</tr>
				<tr>
					<td>Enter Violation Status:</td>
					<td><input type="text" name="evStatus"></td>
				</tr>
				<tr>
					<td>Enter Violation Land Size:</td>
					<td><input type="text" name="ezLandSize"></td>
				</tr>
				<tr>
					<td>Enter Violation Repeated Size:</td>
					<td><input type="text" name="exRepeatedSize"></td>
				</tr>
				<tr>
					<td>Enter Related Building Number:</td>
					<td><input type="text" name="exRelatedBuildingNo"></td>
				</tr>
			</table>
			<input type="submit" value="Add External Violation">
		</form>
		<c:url var="back_home" value="ev_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>