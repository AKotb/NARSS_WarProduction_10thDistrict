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
<title> تعديل بيانات عقار مخالف </title>
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
			<form method="GET" action="updateexternalviolation">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000;">
					<caption>
						<h2> تعديل بيانات عقار مخالف </h2>
					</caption>
					<tr>
						<td><input dir="rtl" type="text" name="evNewViolationNo" value="${externalviolation.evNewViolationNo}" readonly="readonly"></td>
						<td>: رقم المخالفة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="evRelatedBuildingBarcode" value="${externalviolation.evRelatedBuildingBarcode}"></td>
						<td>: كود العقار / المبنى المجاور </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="evViolationType" value="${externalviolation.evViolationType}"></td>
						<td>: نوع المخالفة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="evViolationActivity" value="${externalviolation.evViolationActivity}"></td>
						<td>: نشاط المخالفة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="evNumberOfFloors" value="${externalviolation.evNumberOfFloors}"></td>
						<td>: عدد طوابق المخالفة </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="evArchitecturalStyle" value="${externalviolation.evArchitecturalStyle}"></td>
						<td>: الأسلوب الإنشائي </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="evStatus" value="${externalviolation.evStatus}"></td>
						<td>: حالة العقار </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="ezLandSize" value="${externalviolation.ezLandSize}"></td>
						<td>: مساحة الأرض  </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="exRepeatedSize" value="${externalviolation.exRepeatedSize}"></td>
						<td>: مساحة المتكرر </td>
					</tr>
					<tr>
						<td><input dir="rtl" type="text" name="exRelatedBuildingNo" value="${externalviolation.exRelatedBuildingNo}"></td>
						<td>: رقم العقار / المبنى المجاور </td>
					</tr>
				</table>
				<input type="submit" value=" حفظ ">
				<input type="button" value=" إلغاء " onclick="cancel()">
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