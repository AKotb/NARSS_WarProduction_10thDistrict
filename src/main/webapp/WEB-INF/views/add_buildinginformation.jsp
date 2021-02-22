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
<title> اضافة مبنى / عقار جديد </title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="../../_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 779px;">
		<div align="center">
			<form method="POST" action="addbuildinginformation">
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: right;">
					<caption>
						<h2> (1) اضافة مبنى / عقار جديد </h2>
					</caption>
					<tr>
						<td><input type="text" name="biBuildingBarcode"></td>
						<td>: ادخل كود المبنى / العقار </td>
					</tr>
					<tr>
						<td><input type="text" name="biBuildingNo"></td>
						<td>: ادخل رقم المبنى / العقار طبقاً للمخطط </td>
					</tr>
					<tr>
						<td><input type="text" name="biBuidlingCurrentNo"></td>
						<td>: ادخل رقم المبنى / العقار طبقاً للوضع الراهن </td>
					</tr>
					<tr>
						<td><input type="text" name="biBuildingModel"></td>
						<td>: ادخل نموذج العقار / المبنى </td>
					</tr>
					<tr>
						<td><input type="text" name="biNumberOfFloors"></td>
						<td>: ادخل عدد الأدوار / الطوابق </td>
					</tr>
					<tr>
						<td><input type="text" name="biNumberOfFlatsPerFloor"></td>
						<td>: ادخل عدد الوحدات في كل طابق </td>
					</tr>
					<tr>
						<td><input type="text" name="biNumberOfUnits"></td>
						<td>: ادخل اجمالي عدد الوحدات </td>
					</tr>
					<tr>
						<td><input type="text" name="biUsage"></td>
						<td>:   ادخل الغرض من العقار </td>
					</tr>
					<tr>
						<td><input type="text" name="biArchitecturalStyle"></td>
						<td>: ادخل الأسلوب الإنشائي </td>
					</tr>
					<tr>
						<td><input type="text" name="biStatus"></td>
						<td>: ادخل حالة العقار </td>
					</tr>
					<tr>
						<td><input type="text" name="biViolations"></td>
						<td>: ادخل المخالفات </td>
					</tr>
					<tr>
						<td><input type="text" name="biTrespassingBuilding"></td>
						<td>: ادخل التعديات على الأرض بمبنى </td>
					</tr>
				</table>
				<table
					style="align: center; background-color: #F1E6E6; color: #000000; width: 50%; float: left;">
					<caption>
						<h2> (2) اضافة مبنى / عقار جديد </h2>
					</caption>
					<tr>
						<td><input type="text" name="biTrespassingFence"></td>
						<td>: ادخل التعديات على الأرض بسور </td>
					</tr>
					<tr>
						<td><input type="text" name="biTrespassingWorks"></td>
						<td>: ادخل التعديات على الأرض بإشغالات </td>
					</tr>
					<tr>
						<td><input type="text" name="biChangingActivity"></td>
						<td>: ادخل تغيير النشاط </td>
					</tr>
					<tr>
						<td><input type="text" name="biStreetName"></td>
						<td>: ادخل اسم الشارع </td>
					</tr>
					<tr>
						<td><input type="text" name="biPropertyOwnership"></td>
						<td>: ادخل ملكية العقار </td>
					</tr>
					<tr>
						<td><input type="text" name="biCityCode"></td>
						<td>: ادخل كود المدينة / المحافظة </td>
					</tr>
					<tr>
						<td><input type="text" name="biAreaCode"></td>
						<td>: ادخل كود الحي</td>
					</tr>
					<tr>
						<td><input type="text" name="biRegionCode"></td>
						<td>: ادخل كود المنطقة </td>
					</tr>
					<tr>
						<td><input type="text" name="biZoneCode"></td>
						<td>: ادخل كود المربع الرئيسي </td>
					</tr>
					<tr>
						<td><input type="text" name="biSubZoneCode"></td>
						<td>: ادخل كود المربع الفرعي </td>
					</tr>
					<tr>
						<td><input type="text" name="biLastContractDate"></td>
						<td>: ادخل تاريخ اخر تعاقد </td>
					</tr>
					<tr>
						<td><input type="text" name="biChangeActivityDate"></td>
						<td>: ادخل تاريخ تغيير النشاط </td>
					</tr>
				</table>
				<input type="submit" value=" اضافة ">
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