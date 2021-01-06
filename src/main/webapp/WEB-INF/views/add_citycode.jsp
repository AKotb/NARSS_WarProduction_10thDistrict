<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New City Code</title>
</head>
<body>
<div align="center">
<form method="POST" action="addcitycode">
<table style="align: center; background-color:#F1E6E6; border=0; cellpadding=5">
<caption><h2>Add New City Code</h2></caption>
<tr> <td> Enter City Code:</td><td><input type="text" name="cityCode"></td>   </tr>
<tr> <td> Enter City Name:</td><td><input type="text" name="cityName"></td>   </tr>
</table>
<input type="submit" value="Add City Code">
</form>
<c:url var="back_home" value="backtoindex" />
<a href="${back_home}">Return to Home Page</a>
</div>
</body>
</html>