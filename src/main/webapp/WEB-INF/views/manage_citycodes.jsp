<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>City Codes Management</title>
<body>
	<h2 style="text-align: center;">Welcome to City Codes Management Page</h2>
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
</body>
</html>