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
	<div class="container" style="height: 650px;">
		<div align="center">
			<form method="GET" action="addunitinformation">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: right;">
					<caption>
						<h2> (1) اضافة وحدة / شقة جديدة </h2>
					</caption>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltBuildingNo"></td>
						<td><p style="float: right;">: ادخل رقم المبنى </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltUnitNo"></td>
						<td><p style="float: right;">: ادخل رقم الوحدة </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltBuildType"></td>
						<td><p style="float: right;">: ادخل نوع المبنى </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltFloorNo"></td>
						<td><p style="float: right;">: ادخل رقم الدور </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltCurrentOwnerName"></td>
						<td><p style="float: right;">: ادخل اسم المالك الحالي </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltDeliverDate"></td>
						<td><p style="float: right;">: ادخل تاريخ الإستلام </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltAssignedName"></td>
						<td><p style="float: right;">: ادخل اسم المتنازل </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltAssignDate"></td>
						<td><p style="float: right;">: ادخل تاريخ التنازل </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltUnitSize"></td>
						<td><p style="float: right;">: ادخل مساحة الوحدة </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltUnitPrice"></td>
						<td><p style="float: right;">: ادخل سعر الوحدة </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltFloor"></td>
						<td><p style="float: right;">: ادخل الدور </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltComments"></td>
						<td><p style="float: right;">: ادخل ملاحظات على الوحدة </p></td>
					</tr>
				</table>
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: left;">
					<caption>
						<h2> (2) اضافة وحدة / شقة جديدة </h2>
					</caption>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltBarcode"></td>
						<td><p style="float: right;">: ادخل كود الوحدة </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltChangeActivity"></td>
						<td><p style="float: right;">: ادخل تغيير النشاط </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltTrespassingBuidling"></td>
						<td><p style="float: right;">: ادخل التعديات على الأرض بمبنى </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltExtendOfViolation"></td>
						<td><p style="float: right;">: ادخل امتداد عدد ادوار المخالفة </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" style="float: right;" dir="rtl" type="text" name="fltViolationSize"></td>
						<td><p style="float: right;">: ادخل مساحة المخالفة </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltTrespassingFence"></td>
						<td><p style="float: right;">: ادخل التعديات على الأرض بسور </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltTrespassingWorks"></td>
						<td><p style="float: right;">: ادخل التعديات على الأرض بإشغالات </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltMainActivity"></td>
						<td><p style="float: right;">: ادخل نشاط الوحدة طبقاً للمخطط </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltBuildingBarcode"></td>
						<td><p style="float: right;">: ادخل كود المبنى / العقار </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltCurrentOwnerID"></td>
						<td><p style="float: right;">: ادخل رقم بطاقة المالك الحالي </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltTrespassingFenceSize"></td>
						<td><p style="float: right;">: ادخل مساحة التعديات على الأرض بمبنى </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="fltTrespassingBuidlingSize"></td>
						<td><p style="float: right;">: ادخل مساحة التعديات على الأرض بمبنى </p></td>
					</tr>
				</table>
				<input type="submit" value=" اضافة ">
				<input type="button" value=" إلغاء " onclick="cancel()">
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