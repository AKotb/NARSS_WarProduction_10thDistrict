<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Unit</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="addunitinformation">
			<table style="align: center; background-color: #F1E6E6;">
				<caption>
					<h2>Add New Unit</h2>
				</caption>
				<tr>
					<td>Enter Building Number:</td>
					<td><input type="text" name="fltBuildingNo"></td>
				</tr>
				<tr>
					<td>Enter Unit Number:</td>
					<td><input type="text" name="fltUnitNo"></td>
				</tr>
				<tr>
					<td>Enter Building Type:</td>
					<td><input type="text" name="fltBuildType"></td>
				</tr>
				<tr>
					<td>Enter Floor Number:</td>
					<td><input type="text" name="fltFloorNo"></td>
				</tr>
				<tr>
					<td>Enter Current Owner Name:</td>
					<td><input type="text" name="fltCurrentOwnerName"></td>
				</tr>
				<tr>
					<td>Enter Deliver Date:</td>
					<td><input type="text" name="fltDeliverDate"></td>
				</tr>
				<tr>
					<td>Enter Assigned Name:</td>
					<td><input type="text" name="fltAssignedName"></td>
				</tr>
				<tr>
					<td>Enter Assign Date:</td>
					<td><input type="text" name="fltAssignDate"></td>
				</tr>
				<tr>
					<td>Enter Unit Size:</td>
					<td><input type="text" name="fltUnitSize"></td>
				</tr>
				<tr>
					<td>Enter Unit Price:</td>
					<td><input type="text" name="fltUnitPrice"></td>
				</tr>
				<tr>
					<td>Enter Floor:</td>
					<td><input type="text" name="fltFloor"></td>
				</tr>
				<tr>
					<td>Enter Comments on Unit:</td>
					<td><input type="text" name="fltComments"></td>
				</tr>
				<tr>
					<td>Enter Unit Barcode:</td>
					<td><input type="text" name="fltBarcode"></td>
				</tr>
				<tr>
					<td>Enter Change Activity:</td>
					<td><input type="text" name="fltChangeActivity"></td>
				</tr>
				<tr>
					<td>Enter Trespassing Building:</td>
					<td><input type="text" name="fltTrespassingBuidling"></td>
				</tr>
				<tr>
					<td>Enter Extend of Violation:</td>
					<td><input type="text" name="fltExtendOfViolation"></td>
				</tr>
				<tr>
					<td>Enter Violation Size:</td>
					<td><input type="text" name="fltViolationSize"></td>
				</tr>
				<tr>
					<td>Enter Trespassing Fence:</td>
					<td><input type="text" name="fltTrespassingFence"></td>
				</tr>
				<tr>
					<td>Enter Trespassing Works:</td>
					<td><input type="text" name="fltTrespassingWorks"></td>
				</tr>
				<tr>
					<td>Enter Main Activity:</td>
					<td><input type="text" name="fltMainActivity"></td>
				</tr>
				<tr>
					<td>Enter Building Barcode:</td>
					<td><input type="text" name="fltBuildingBarcode"></td>
				</tr>
				<tr>
					<td>Enter Current Owner ID:</td>
					<td><input type="text" name="fltCurrentOwnerID"></td>
				</tr>
				<tr>
					<td>Enter Trespassing Fence Size:</td>
					<td><input type="text" name="fltTrespassingFenceSize"></td>
				</tr>
				<tr>
					<td>Enter Trespassing Building Size:</td>
					<td><input type="text" name="fltTrespassingBuidlingSize"></td>
				</tr>
			</table>
			<input type="submit" value="Add Unit Information">
		</form>
		<c:url var="back_home" value="ui_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>