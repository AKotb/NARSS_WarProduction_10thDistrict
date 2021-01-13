<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Keys Management</title>
<body>
	<h2 style="text-align: center;">Welcome to Keys Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="k_showadditionform" var="add_key" />
		<h2>
			<a href="${add_key}"> Add New Key</a>
		</h2>
		<br />
		<c:url value="k_list" var="show_keys" />
		<h2>
			<a href="${show_keys}"> Display All Keys</a>
		</h2>
	</div>
</body>
</html>