<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Zones Management</title>
<body>
	<h2 style="text-align: center;">Welcome to Zones Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="z_showadditionform" var="add_zone" />
		<h2>
			<a href="${add_zone}"> Add New Zone</a>
		</h2>
		<br />
		<c:url value="z_list" var="show_zones" />
		<h2>
			<a href="${show_zones}"> Display All Zones</a>
		</h2>
	</div>
</body>
</html>