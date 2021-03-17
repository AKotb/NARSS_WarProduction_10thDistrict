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
<title> تعديل بيانات الوحدة / الشقة </title>
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
			<form method="GET" action="updateunitinformation">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: right;">
					<caption>
						<h2> (1) تعديل بيانات الوحدة / الشقة </h2>
					</caption>
					<tr>
						<td><input dir="rtl" type="text" name="fltBuildingNo" value="${unitinformation.fltBuildingNo}"></td>
						<td>: رقم المبنى </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltUnitNo" value="${unitinformation.fltUnitNo}"></td>
						<td>: رقم الوحدة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltBuildType" value="${unitinformation.fltBuildType}"></td>
						<td>: نوع المبنى </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltFloorNo" value="${unitinformation.fltFloorNo}"></td>
						<td>: رقم الدور </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltCurrentOwnerName" value="${unitinformation.fltCurrentOwnerName}"></td>
						<td>: اسم المالك الحالي </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltDeliverDate" value="${unitinformation.fltDeliverDate}"></td>
						<td>: تاريخ الإستلام </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltAssignedName" value="${unitinformation.fltAssignedName}"></td>
						<td>: اسم المتنازل </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltAssignDate" value="${unitinformation.fltAssignDate}"></td>
						<td>: تاريخ التنازل </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltUnitSize" value="${unitinformation.fltUnitSize}"></td>
						<td>: مساحة الوحدة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltUnitPrice" value="${unitinformation.fltUnitPrice}"></td>
						<td>: سعر الوحدة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltFloor" value="${unitinformation.fltFloor}"></td>
						<td>: الدور </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltComments" value="${unitinformation.fltComments}"></td>
						<td>: ملاحظات على الوحدة </td>
					</tr>
				</table>
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: left;">
					<caption>
						<h2> (2) تعديل بيانات الوحدة / الشقة  </h2>
					</caption>
					<tr>
						<td><input dir="rtl" type="text" name="fltBarcode" value="${unitinformation.fltBarcode}" readonly="readonly"></td>
						<td>: كود الوحدة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltChangeActivity" value="${unitinformation.fltChangeActivity}"></td>
						<td>: تغيير النشاط </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltTrespassingBuidling" value="${unitinformation.fltTrespassingBuidling}"></td>
						<td>: التعديات على الأرض بمبنى </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltExtendOfViolation" value="${unitinformation.fltExtendOfViolation}"></td>
						<td>: امتداد عدد ادوار المخالفة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltViolationSize" value="${unitinformation.fltViolationSize}"></td>
						<td>: مساحة المخالفة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltTrespassingFence" value="${unitinformation.fltTrespassingFence}"></td>
						<td>: التعديات على الأرض بسور </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltTrespassingWorks" value="${unitinformation.fltTrespassingWorks}"></td>
						<td>: التعديات على الأرض بإشغالات </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltMainActivity" value="${unitinformation.fltMainActivity}"></td>
						<td>: ادخل نشاط الوحدة طبقاً للمخطط </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltBuildingBarcode" value="${unitinformation.fltBuildingBarcode}"></td>
						<td>: كود المبنى / العقار </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltCurrentOwnerID" value="${unitinformation.fltCurrentOwnerID}"></td>
						<td>: رقم بطاقة المالك الحالي </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltTrespassingFenceSize" value="${unitinformation.fltTrespassingFenceSize}"></td>
						<td>: مساحة التعديات على الأرض بمبنى </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="fltTrespassingBuidlingSize" value="${unitinformation.fltTrespassingBuidlingSize}"></td>
						<td>: مساحة التعديات على الأرض بمبنى </td>
					</tr>
				</table>
				<input type="submit" value=" حفظ ">
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