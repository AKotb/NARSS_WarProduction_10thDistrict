<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>External Violations Management</title>
<body>
	<h2 style="text-align: center;">Welcome to External Violations Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="ev_showadditionform" var="add_externalviolation" />
		<h2>
			<a href="${add_externalviolation}"> Add New External Violation</a>
		</h2>
		<br />
		<c:url value="ev_list" var="show_externalviolations" />
		<h2>
			<a href="${show_externalviolations}"> Display All External Violations</a>
		</h2>
	</div>
</body>
</html>