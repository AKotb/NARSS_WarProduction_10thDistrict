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
<title> اضافة وحدة / شقة جديدة </title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="../../_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 779px;">
		<div align="center">
			<form method="GET" action="addunitinformation">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: right;">
					<caption>
						<h2> (1) اضافة وحدة / شقة جديدة </h2>
					</caption>
					<tr>
						<td><input type="text" name="fltBuildingNo"></td>
						<td>: ادخل رقم المبنى </td>
					</tr>
					<tr>
						<td><input type="text" name="fltUnitNo"></td>
						<td>: ادخل رقم الوحدة </td>
					</tr>
					<tr>
						<td><input type="text" name="fltBuildType"></td>
						<td>: ادخل نوع المبنى </td>
					</tr>
					<tr>
						<td><input type="text" name="fltFloorNo"></td>
						<td>: ادخل رقم الدور </td>
					</tr>
					<tr>
						<td><input type="text" name="fltCurrentOwnerName"></td>
						<td>: ادخل اسم المالك الحالي </td>
					</tr>
					<tr>
						<td><input type="text" name="fltDeliverDate"></td>
						<td>: ادخل تاريخ الإستلام </td>
					</tr>
					<tr>
						<td><input type="text" name="fltAssignedName"></td>
						<td>: ادخل اسم المتنازل </td>
					</tr>
					<tr>
						<td><input type="text" name="fltAssignDate"></td>
						<td>: ادخل تاريخ التنازل </td>
					</tr>
					<tr>
						<td><input type="text" name="fltUnitSize"></td>
						<td>: ادخل مساحة الوحدة </td>
					</tr>
					<tr>
						<td><input type="text" name="fltUnitPrice"></td>
						<td>: ادخل سعر الوحدة </td>
					</tr>
					<tr>
						<td><input type="text" name="fltFloor"></td>
						<td>: ادخل الدور </td>
					</tr>
					<tr>
						<td><input type="text" name="fltComments"></td>
						<td>: ادخل ملاحظات على الوحدة </td>
					</tr>
					<tr>
						<td><input type="text" name="fltBarcode"></td>
						<td>: ادخل كود الوحدة </td>
					</tr>
					<tr>
						<td><input type="text" name="fltChangeActivity"></td>
						<td>: ادخل تغيير النشاط </td>
					</tr>
				</table>
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: left;">
					<caption>
						<h2> (2) اضافة وحدة / شقة جديدة </h2>
					</caption>
					<tr>
						<td><input type="text" name="fltTrespassingBuidling"></td>
						<td>: ادخل التعديات على الأرض بمبنى </td>
					</tr>
					<tr>
						<td><input type="text" name="fltExtendOfViolation"></td>
						<td>: ادخل امتداد عدد ادوار المخالفة </td>
					</tr>
					<tr>
						<td><input type="text" name="fltViolationSize"></td>
						<td>: ادخل مساحة المخالفة </td>
					</tr>
					<tr>
						<td><input type="text" name="fltTrespassingFence"></td>
						<td>: ادخل التعديات على الأرض بسور </td>
					</tr>
					<tr>
						<td><input type="text" name="fltTrespassingWorks"></td>
						<td>: ادخل التعديات على الأرض بإشغالات </td>
					</tr>
					<tr>
						<td><input type="text" name="fltMainActivity"></td>
						<td>: ادخل نشاط الوحدة طبقاً للمخطط </td>
					</tr>
					<tr>
						<td><input type="text" name="fltBuildingBarcode"></td>
						<td>: ادخل كود المبنى / العقار </td>
					</tr>
					<tr>
						<td><input type="text" name="fltCurrentOwnerID"></td>
						<td>: ادخل رقم بطاقة المالك الحالي </td>
					</tr>
					<tr>
						<td><input type="text" name="fltTrespassingFenceSize"></td>
						<td>: ادخل مساحة التعديات على الأرض بمبنى </td>
					</tr>
					<tr>
						<td><input type="text" name="fltTrespassingBuidlingSize"></td>
						<td>: ادخل مساحة التعديات على الأرض بمبنى </td>
					</tr>
				</table>
				<input type="submit" value=" اضافة ">
			</form>
			<c:url var="back_home" value="ui_backtoindex" />
			<a href="${back_home}"> عودة إلى الصفحة الرئيسية </a>
		</div>
	</div>
	<!-- Content ends here ================================================================================================= -->

	<!-- Footer ============================================================================================================ -->
	<jsp:include page="../../_footer.jsp"></jsp:include>
	<!-- Footer ends here ================================================================================================== -->

</body>
</html>