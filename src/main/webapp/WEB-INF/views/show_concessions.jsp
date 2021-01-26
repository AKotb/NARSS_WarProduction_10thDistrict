<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Concessions</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="15">
			<caption>
				<h2>List of Concessions</h2>
			</caption>
			<tr>
				<th>Unit Barcode</th>
				<th>Concession Serial</th>
				<th>Concession from Name</th>
				<th>Concession from ID</th>
				<th>Concession to Name</th>
				<th>Concession to ID</th>
				<th>Concession Date</th>
				<th>Action</th>
			</tr>
			<c:forEach var="concession" items="${msg}">
				<c:url var="deletelink" value="deleteconcession">
					<c:param name="concs" value="${concession.coConcessionSerial}"></c:param>
				</c:url>
				<tr>
					<td><c:out value="${concession.coUnitBarcode}" /></td>
					<td><c:out value="${concession.coConcessionSerial}" /></td>
					<td><c:out value="${concession.coConcessionFromName}" /></td>
					<td><c:out value="${concession.coConcessionFromId}" /></td>
					<td><c:out value="${concession.coConcessionToName}" /></td>
					<td><c:out value="${concession.coConcessionToId}" /></td>
					<td><c:out value="${concession.coConcessionDate}" /></td>
					<td><a href="${deletelink}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="back_home" value="conc_backtoindex" />
		<a href="${back_home}">Return to Home Page</a>
	</div>
</body>
</html>