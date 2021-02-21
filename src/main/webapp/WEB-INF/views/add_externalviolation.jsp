<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Basic Page Needs ==================================================================================================== -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>اضافة عقار مخالف جديد</title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="../../_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 629px; width: 100%;">
		<div align="center">
			<form method="POST" action="addexternalviolation">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000;">
					<caption>
						<h2> اضافة عقار مخالف مستقل جديد </h2>
					</caption>
					<tr>
						<td><input type="text" name="evNewViolationNo"></td>
						<td>: ادخل رقم المخالفة </td>
					</tr>
					<tr>
						<td><input type="text" name="evRelatedBuildingBarcode"></td>
						<td>: ادخل كود العقار / المبنى المجاور </td>
					</tr>
					<tr>
						<td><input type="text" name="evViolationType"></td>
						<td>: ادخل نوع المخالفة </td>
					</tr>
					<tr>
						<td><input type="text" name="evViolationActivity"></td>
						<td>: ادخل نشاط المخالفة </td>
					</tr>
					<tr>
						<td><input type="text" name="evNumberOfFloors"></td>
						<td>: ادخل عدد طوابق المخالفة </td>
					</tr>
					<tr>
						<td><input type="text" name="evArchitecturalStyle"></td>
						<td>: ادخل الأسلوب الإنشائي </td>
					</tr>
					<tr>
						<td><input type="text" name="evStatus"></td>
						<td>: ادخل حالة العقار </td>
					</tr>
					<tr>
						<td><input type="text" name="ezLandSize"></td>
						<td>: ادخل مساحة الأرض  </td>
					</tr>
					<tr>
						<td><input type="text" name="exRepeatedSize"></td>
						<td>: ادخل مساحة المتكرر </td>
					</tr>
					<tr>
						<td><input type="text" name="exRelatedBuildingNo"></td>
						<td>: ادخل رقم العقار / المبنى المجاور </td>
					</tr>
				</table>
				<input type="submit" value=" اضافة ">
			</form>
			<c:url var="back_home" value="ev_backtoindex" />
			<a href="${back_home}"> عودة إلى الصفحة الرئيسية </a>
		</div>
	</div>
	<!-- Content ends here ================================================================================================= -->

	<!-- Footer ============================================================================================================ -->
	<jsp:include page="../../_footer.jsp"></jsp:include>
	<!-- Footer ends here ================================================================================================== -->

</body>
</html>