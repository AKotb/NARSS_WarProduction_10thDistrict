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
<title> تعديل مبنى / عقار </title>
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
			<form method="GET" action="updatebuildinginformation">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: right;">
					<caption>
						<h2> (1) تعديل مبنى / عقار </h2>
					</caption>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biBuildingBarcode" value="${buildinginformation.biBuildingBarcode}" readonly="readonly"></td>
						<td><p style="float: right;">: كود المبنى / العقار </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biBuildingNo" value="${buildinginformation.biBuildingNo}"></td>
						<td><p style="float: right;">: رقم المبنى / العقار طبقاً للمخطط </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biBuidlingCurrentNo" value="${buildinginformation.biBuidlingCurrentNo}"></td>
						<td><p style="float: right;">: رقم المبنى / العقار طبقاً للوضع الراهن </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biBuildingModel" value="${buildinginformation.biBuildingModel}"></td>
						<td><p style="float: right;">: نموذج العقار / المبنى </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" style="float: right;" dir="rtl" type="text" name="biNumberOfFloors" value="${buildinginformation.biNumberOfFloors}"></td>
						<td><p style="float: right;">: عدد الأدوار / الطوابق </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biNumberOfFlatsPerFloor" value="${buildinginformation.biNumberOfFlatsPerFloor}"></td>
						<td><p style="float: right;">: عدد الوحدات في كل طابق </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biNumberOfUnits" value="${buildinginformation.biNumberOfUnits}"></td>
						<td><p style="float: right;">: اجمالي عدد الوحدات </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biUsage" value="${buildinginformation.biUsage}"></td>
						<td><p style="float: right;">:   الغرض من العقار </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biArchitecturalStyle" value="${buildinginformation.biArchitecturalStyle}"></td>
						<td><p style="float: right;">: االأسلوب الإنشائي </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biStatus" value="${buildinginformation.biStatus}"></td>
						<td><p style="float: right;">: حالة العقار </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biViolations" value="${buildinginformation.biViolations}"></td>
						<td><p style="float: right;">: المخالفات </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biTrespassingBuilding" value="${buildinginformation.biTrespassingBuilding}"></td>
						<td><p style="float: right;">: التعديات على الأرض بمبنى </p></td>
					</tr>
				</table>
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: left;">
					<caption>
						<h2> (2) تعديل مبنى / عقار </h2>
					</caption>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biTrespassingFence" value="${buildinginformation.biTrespassingFence}"></td>
						<td><p style="float: right;">: التعديات على الأرض بسور </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biTrespassingWorks" value="${buildinginformation.biTrespassingWorks}"></td>
						<td><p style="float: right;">: لتعديات على الأرض بإشغالات </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biChangingActivity" value="${buildinginformation.biChangingActivity}"></td>
						<td><p style="float: right;">: تغيير النشاط </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biStreetName" value="${buildinginformation.biStreetName}"></td>
						<td><p style="float: right;">: اسم الشارع </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biPropertyOwnership" value="${buildinginformation.biPropertyOwnership}"></td>
						<td><p style="float: right;">: ملكية العقار </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biCityCode" value="${buildinginformation.biCityCode}"></td>
						<td><p style="float: right;">: كود المدينة / المحافظة </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biAreaCode" value="${buildinginformation.biAreaCode}"></td>
						<td><p style="float: right;">: كود الحي </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biRegionCode" value="${buildinginformation.biRegionCode}"></td>
						<td><p style="float: right;">: كود المنطقة </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biZoneCode" value="${buildinginformation.biZoneCode}"></td>
						<td><p style="float: right;">: كود المربع الرئيسي </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biSubZoneCode" value="${buildinginformation.biSubZoneCode}"></td>
						<td><p style="float: right;">: كود المربع الفرعي </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biLastContractDate" value="${buildinginformation.biLastContractDate}"></td>
						<td><p style="float: right;">: تاريخ اخر تعاقد </p></td>
					</tr>
					<tr>
						<td><input style="float: right;" dir="rtl" type="text" name="biChangeActivityDate" value="${buildinginformation.biChangeActivityDate}"></td>
						<td><p style="float: right;">: تاريخ تغيير النشاط </p></td>
					</tr>
				</table>
				<input type="submit" value=" حفظ ">
				<input type="button" value=" إلغاء " onclick="cancel()">
			</form>
			<c:url var="back_home" value="bi_backtoindex" />
			<a href="${back_home}"> عودة إلى الصفحة الرئيسية </a>
		</div>
	</div>
	<!-- Content ends here ================================================================================================= -->

	<!-- Footer ============================================================================================================ -->
	<jsp:include page="../../_footer.jsp"></jsp:include>
	<!-- Footer ends here ================================================================================================== -->

</body>
</html>