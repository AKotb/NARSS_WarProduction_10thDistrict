<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Authorization</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="addauthorization">
			<table style="align: center; background-color: #F1E6E6;">
				<caption>
					<h2>Add New Authorization</h2>
				</caption>
				<tr>
					<td>Enter Unit Barcode:</td>
					<td><input type="text" name="maUnitBarcode"></td>
				</tr>
				<tr>
					<td>Enter Delegation Number:</td>
					<td><input type="text" name="maDelegationNo"></td>
				</tr>
				<tr>
					<td>Enter Delegation Date:</td>
					<td><input type="text" name="maDelegationDate"></td>
				</tr>
				<tr>
					<td>Enter Delegation Issued Place:</td>
					<td><input type="text" name="maDelegationIssuedPlace"></td>
				</tr>
				<tr>
					<td>Enter Delegation Type:</td>
					<td><input type="text" name="maDelegationType"></td>
				</tr>
				<tr>
					<td>Enter Delegator Name:</td>
					<td><input type="text" name="maDelegatorName"></td>
				</tr>
				<tr>
					<td>Enter Delegator ID:</td>
					<td><input type="text" name="maDelegatorId"></td>
				</tr>
				<tr>
					<td>Enter Delegate to Name:</td>
					<td><input type="text" name="maDelegateToName"></td>
				</tr>
				<tr>
					<td>Enter Delegate to ID:</td>
					<td><input type="text" name="maDelegateToId"></td>
				</tr>
			</table>
			<input type="submit" value="Add Authorization">
		</form>
		<c:url var="back_home" value="auz_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>