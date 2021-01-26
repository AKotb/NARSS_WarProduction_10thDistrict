<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Authorizations Management</title>
<body>
	<h2 style="text-align: center;">Welcome to Authorizations Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="auz_showadditionform" var="add_authorization" />
		<h2>
			<a href="${add_authorization}"> Add New Authorization</a>
		</h2>
		<br />
		<c:url value="auz_list" var="show_authorizations" />
		<h2>
			<a href="${show_authorizations}"> Display All Authorizations</a>
		</h2>
	</div>
</body>
</html>