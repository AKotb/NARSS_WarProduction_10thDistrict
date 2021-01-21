<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Units Management</title>
<body>
	<h2 style="text-align: center;">Welcome to Units Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="ui_showadditionform" var="add_unitinformation" />
		<h2>
			<a href="${add_unitinformation}"> Add New Unit</a>
		</h2>
		<br />
		<c:url value="ui_list" var="show_unitsinformation" />
		<h2>
			<a href="${show_unitsinformation}"> Display All Units</a>
		</h2>
	</div>
</body>
</html>