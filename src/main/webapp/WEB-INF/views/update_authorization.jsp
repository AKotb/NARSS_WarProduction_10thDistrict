<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Basic Page Needs ==================================================================================================== -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Documenting 10th District Nasr City">
<meta name="author" content="NARSS Dev Team">

<!-- Mobile Specific Metas ==================================================================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

<!-- CSS ==================================================================================================== -->
<link rel="stylesheet" href="resources/css/base.css">
<link rel="stylesheet" href="resources/css/skeleton.css">
<link rel="stylesheet" href="resources/css/screen.css">
<link rel="stylesheet" href="resources/css/prettyPhoto.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="resources/css/warproductionalhayalaasher.css" />

<!-- Favicons ==================================================================================================== -->
<link rel="shortcut icon" href="resources/images/favicon.png">
<link rel="apple-touch-icon"
	href="resources/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="resources/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="resources/images/apple-touch-icon-114x114.png">

<!-- Google Fonts ==================================================================================================== -->
<link
	href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>

<!-- Scripts ==================================================================================================== -->
<script src="resources/js/jquery-1.8.0.min.js" type="text/javascript"></script>
<!-- Main js files -->
<script src="resources/js/screen.js" type="text/javascript"></script>
<!-- Tooltip -->
<script src="resources/js/poshytip-1.0/src/jquery.poshytip.min.js"
	type="text/javascript"></script>
<!-- Tabs -->
<script src="resources/js/tabs.js" type="text/javascript"></script>
<!-- Tweets -->
<script src="resources/js/jquery.tweetable.js" type="text/javascript"></script>
<!-- Include prettyPhoto -->
<script src="resources/js/jquery.prettyPhoto.js" type="text/javascript"></script>
<!-- Include Superfish -->
<script src="resources/js/superfish.js" type="text/javascript"></script>
<script src="resources/js/hoverIntent.js" type="text/javascript"></script>
<!-- Flexslider -->
<script src="resources/js/jquery.flexslider-min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="resources/js/modernizr.custom.29473.js"></script>
<title> تعديل بيانات التوكيل </title>
<script>
	function cancel() {
		window.history.back();
	}
</script>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="../../_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 606px;">
		<div align="center">
			<form method="GET" action="updateauthorization">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000;">
					<caption>
						<h2> تعديل بيانات التوكيل </h2>
					</caption>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="maUnitBarcode" value="${authorization.maUnitBarcode}"></td>
						<td><p style="float: right;">: كود الوحدة/الشقة</p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="maDelegationNo" value="${authorization.maDelegationNo}" readonly="readonly"></td>
						<td><p style="float: right;">: رقم التوكيل</p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="maDelegationDate" value="${authorization.maDelegationDate}"></td>
						<td><p style="float: right;">: تاريخ التوكيل</p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="maDelegationIssuedPlace" value="${authorization.maDelegationIssuedPlace}"></td>
						<td><p style="float: right;">: جهة اصدار التوكيل</p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="maDelegationType" value="${authorization.maDelegationType}"></td>
						<td><p style="float: right;">: نوع التوكيل</p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="maDelegatorName" value="${authorization.maDelegatorName}"></td>
						<td><p style="float: right;">: اسم الموكل</p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="maDelegatorId" value="${authorization.maDelegatorId}"></td>
						<td><p style="float: right;">: رقم بطاقة الموكل</p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="maDelegateToName" value="${authorization.maDelegateToName}"></td>
						<td><p style="float: right;">: اسم الموكل إليه</p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="maDelegateToId" value="${authorization.maDelegateToId}"></td>
						<td><p style="float: right;">: رقم بطاقة الموكل إليه</p></td>
					</tr>
				</table>
				<input type="submit" value=" حفظ ">
				<input type="button" value=" إلغاء " onclick="cancel()">
			</form>
			<c:url var="back_home" value="auz_backtoindex" />
			<a href="${back_home}"> عودة إلى الصفحة الرئيسية </a>
		</div>
	</div>
	<!-- Content ends here ================================================================================================= -->

	<!-- Footer ============================================================================================================ -->
	<jsp:include page="../../_footer.jsp"></jsp:include>
	<!-- Footer ends here ================================================================================================== -->

</body>
</html>