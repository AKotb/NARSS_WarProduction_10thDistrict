<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Building</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="addbuildinginformation">
			<table style="align: center; background-color: #F1E6E6;">
				<caption>
					<h2>Add New Buidling</h2>
				</caption>
				<tr>
					<td>Enter Building Barcode:</td>
					<td><input type="text" name="biBuildingBarcode"></td>
				</tr>
				<tr>
					<td>Enter Buidling Number:</td>
					<td><input type="text" name="biBuildingNo"></td>
				</tr>
				<tr>
					<td>Enter Building Current Number:</td>
					<td><input type="text" name="biBuidlingCurrentNo"></td>
				</tr>
				<tr>
					<td>Enter Building Model:</td>
					<td><input type="text" name="biBuildingModel"></td>
				</tr>
				<tr>
					<td>Enter Number Of Floors:</td>
					<td><input type="text" name="biNumberOfFloors"></td>
				</tr>
				<tr>
					<td>Enter Number Of Flats Per Floor:</td>
					<td><input type="text" name="biNumberOfFlatsPerFloor"></td>
				</tr>
				<tr>
					<td>Enter Number Of Units:</td>
					<td><input type="text" name="biNumberOfUnits"></td>
				</tr>
				<tr>
					<td>Enter Building Usage:</td>
					<td><input type="text" name="biUsage"></td>
				</tr>
				<tr>
					<td>Enter Building Architectural Style:</td>
					<td><input type="text" name="biArchitecturalStyle"></td>
				</tr>
				<tr>
					<td>Enter Building Status:</td>
					<td><input type="text" name="biStatus"></td>
				</tr>
				<tr>
					<td>Enter Building Violations:</td>
					<td><input type="text" name="biViolations"></td>
				</tr>
				<tr>
					<td>Enter Trespassing Building:</td>
					<td><input type="text" name="biTrespassingBuilding"></td>
				</tr>
				<tr>
					<td>Enter Trespassing Fence:</td>
					<td><input type="text" name="biTrespassingFence"></td>
				</tr>
				<tr>
					<td>Enter Trespassing Works:</td>
					<td><input type="text" name="biTrespassingWorks"></td>
				</tr>
				<tr>
					<td>Enter Changing Activity:</td>
					<td><input type="text" name="biChangingActivity"></td>
				</tr>
				<tr>
					<td>Enter Buidling Street Name:</td>
					<td><input type="text" name="biStreetName"></td>
				</tr>
				<tr>
					<td>Enter Property Ownership:</td>
					<td><input type="text" name="biPropertyOwnership"></td>
				</tr>
				<tr>
					<td>Enter City Code:</td>
					<td><input type="text" name="biCityCode"></td>
				</tr>
				<tr>
					<td>Enter Area Code:</td>
					<td><input type="text" name="biAreaCode"></td>
				</tr>
				<tr>
					<td>Enter Region Code:</td>
					<td><input type="text" name="biRegionCode"></td>
				</tr>
				<tr>
					<td>Enter Zone Code:</td>
					<td><input type="text" name="biZoneCode"></td>
				</tr>
				<tr>
					<td>Enter Sub-Zone Code:</td>
					<td><input type="text" name="biSubZoneCode"></td>
				</tr>
				<tr>
					<td>Enter Last Contract Date:</td>
					<td><input type="text" name="biLastContractDate"></td>
				</tr>
				<tr>
					<td>Enter Change Activity Date:</td>
					<td><input type="text" name="biChangeActivityDate"></td>
				</tr>
			</table>
			<input type="submit" value="Add Building Information">
		</form>
		<c:url var="back_home" value="bi_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>