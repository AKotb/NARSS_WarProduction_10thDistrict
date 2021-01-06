<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>Region Codes Management</title>
<body>
	<h2 style="text-align: center;">Welcome to Region Codes Management Page</h2>
	<div
		style="text-align: center; margin-left: 30%; background-color: #F1E6E6; width: 40%">
		<c:url value="rc_showadditionform" var="add_regioncode" />
		<h2>
			<a href="${add_regioncode}"> Add New Region Code</a>
		</h2>
		<br />
		<c:url value="rc_list" var="show_regioncodes" />
		<h2>
			<a href="${show_regioncodes}"> Display All Region Codes</a>
		</h2>
	</div>
</body>
</html>