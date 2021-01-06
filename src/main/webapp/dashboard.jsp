<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>System Dashboard</title>
<body>
	<h2 style="text-align: center;">Welcome to System Dashboard Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="showadditionform" var="add_citycode" />
		<h2>
			<a href="${add_citycode}"> Add New City Code</a>
		</h2>
		<br />
		<c:url value="list" var="show_citycodes" />
		<h2>
			<a href="${show_citycodes}"> Display All City Codes</a>
		</h2>
	</div>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="ar_showadditionform" var="add_areacode" />
		<h2>
			<a href="${add_areacode}"> Add New Area Code</a>
		</h2>
		<br />
		<c:url value="ar_list" var="show_areacodes" />
		<h2>
			<a href="${show_areacodes}"> Display All Area Codes</a>
		</h2>
	</div>
</body>
</html>