<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Owners Management</title>
<body>
	<h2 style="text-align: center;">Welcome to Owners Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="oi_showadditionform" var="add_ownerinformation" />
		<h2>
			<a href="${add_ownerinformation}"> Add New Owner</a>
		</h2>
		<br />
		<c:url value="oi_list" var="show_ownersinformation" />
		<h2>
			<a href="${show_ownersinformation}"> Display All Owners</a>
		</h2>
	</div>
</body>
</html>