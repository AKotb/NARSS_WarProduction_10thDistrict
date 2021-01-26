<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Concessions Management</title>
<body>
	<h2 style="text-align: center;">Welcome to Concessions Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="conc_showadditionform" var="add_concession" />
		<h2>
			<a href="${add_concession}"> Add New Concession</a>
		</h2>
		<br />
		<c:url value="conc_list" var="show_concessions" />
		<h2>
			<a href="${show_concessions}"> Display All Concessions</a>
		</h2>
	</div>
</body>
</html>