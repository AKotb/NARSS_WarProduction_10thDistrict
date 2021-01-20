<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Buidlings Management</title>
<body>
	<h2 style="text-align: center;">Welcome to Buildings Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="bi_showadditionform" var="add_buildinginformation" />
		<h2>
			<a href="${add_buildinginformation}"> Add New Building</a>
		</h2>
		<br />
		<c:url value="bi_list" var="show_buildingsinformation" />
		<h2>
			<a href="${show_buildingsinformation}"> Display All Buildings</a>
		</h2>
	</div>
</body>
</html>