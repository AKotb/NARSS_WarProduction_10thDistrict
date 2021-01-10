<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Sub-Zones Management</title>
<body>
	<h2 style="text-align: center;">Welcome to Sub-Zones Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="sz_showadditionform" var="add_subzone" />
		<h2>
			<a href="${add_subzone}"> Add New Sub-Zone</a>
		</h2>
		<br />
		<c:url value="sz_list" var="show_subzones" />
		<h2>
			<a href="${show_subzones}"> Display All Sub-Zones</a>
		</h2>
	</div>
</body>
</html>