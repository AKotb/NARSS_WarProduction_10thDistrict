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
<title>المباني / العقارات</title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="../../_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 779px; width: 100%;">
		<div align="center">
			<table border="1" cellpadding="15"
				style="color: #000000; border-spacing: 20px; border-collapse: unset;">
				<caption>
					<h2> عرض المباني / العقارات المتاحة </h2>
				</caption>
				<tr>
					<th>اعدادات</th>
					<th>تاريخ تغيير النشاط</th>
					<th>تاريخ اخر تعاقد</th>
					<th>كود المربع الفرعي</th>
					<th>كود المربع الرئيسي</th>
					<th>كود المنطقة</th>
					<th>كود الحي</th>
					<th>كود المدينة / المحافظة</th>
					<th>ملكية العقار</th>
					<th>اسم الشارع</th>
					<th>تغيير النشاط</th>
					<th>التعديات على الأرض بإشغالات</th>
					<th>التعديات على الأرض بسور</th>
					<th>التعديات على الأرض بمبنى</th>
					<th>المخالفات</th>
					<th>حالة العقار</th>
					<th>الأسلوب الإنشائي</th>
					<th>الغرض من العقار</th>
					<th>اجمالي عدد الوحدات</th>
					<th>عدد الوحدات في كل طابق</th>
					<th>عدد الأدوار / الطوابق</th>
					<th>نموذج العقار / المبنى</th>
					<th>رقم المبنى / العقار طبقاً للوضع الراهن</th>
					<th>رقم المبنى / العقار طبقاً للمخطط</th>
					<th> كود المبنى / العقار</th>
				</tr>
				<c:forEach var="buildingInformation" items="${msg}">
					<c:url var="deletelink" value="deletebuildinginformation">
						<c:param name="bibb"
							value="${buildingInformation.biBuildingBarcode}"></c:param>
					</c:url>
					<tr>
						<td style="text-align: center"><a href="${deletelink}">حذف</a></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biChangeActivityDate}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biLastContractDate}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biSubZoneCode}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biZoneCode}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biRegionCode}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biAreaCode}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biCityCode}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biPropertyOwnership}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biStreetName}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biChangingActivity}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biTrespassingWorks}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biTrespassingFence}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biTrespassingBuilding}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biViolations}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biStatus}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biArchitecturalStyle}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biUsage}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biNumberOfUnits}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biNumberOfFlatsPerFloor}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biNumberOfFloors}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biBuildingModel}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biBuidlingCurrentNo}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biBuildingNo}" /></td>
						<td style="text-align: center"><c:out value="${buildingInformation.biBuildingBarcode}" /></td>
					</tr>
				</c:forEach>
			</table>
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