<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>System Dashboard</title>
<body>
	<h2 style="text-align: center;">Welcome to System Dashboard Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="manage_city_codes" var="manage_citycodes" />
		<h2>
			<a href="${manage_citycodes}"> City Codes Management </a>
		</h2>
	</div>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="manage_area_codes" var="manage_areacodes" />
		<h2>
			<a href="${manage_areacodes}"> Area Codes Management </a>
		</h2>
	</div>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="manage_region_codes" var="manage_regioncodes" />
		<h2>
			<a href="${manage_regioncodes}"> Region Codes Management </a>
		</h2>
	</div>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="manage_zones" var="manage_zones" />
		<h2>
			<a href="${manage_zones}"> Zones Management </a>
		</h2>
	</div>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="manage_sub_zones" var="manage_subzones" />
		<h2>
			<a href="${manage_subzones}"> Sub-Zones Management </a>
		</h2>
	</div>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="/" var="backtohomepage" />
		<h2>
			<a href="${backtohomepage}"> Back to Home </a>
		</h2>
	</div>
</body>
</html>