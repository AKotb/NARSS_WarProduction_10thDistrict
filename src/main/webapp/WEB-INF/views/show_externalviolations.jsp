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
<title>المخالفات</title>
</head>
<body>

	<!-- Header ============================================================================================================ -->
	<jsp:include page="../../_header.jsp"></jsp:include>
	<!-- Header ends here ================================================================================================== -->

	<!-- Content =========================================================================================================== -->
	<div class="container" style="height: 606px;">
		<div align="center">
			<table id="tables" border="1" cellpadding="15"
				style="color: #000000; border-spacing: 20px; border-collapse: unset;">
				<caption>
					<h2> عرض العقارات المخالفة المستقلة المتاحة </h2>
				</caption>
				<tr>
					<th>اعدادات</th>
					<th>رقم العقار / المبنى المجاور</th>
					<th>مساحة المتكرر</th>
					<th>مساحة الأرض</th>
					<th>حالة العقار</th>
					<th>الأسلوب الإنشائي</th>
					<th>عدد طوابق المخالفة</th>
					<th>نشاط المخالفة</th>
					<th>نوع المخالفة</th>
					<th>كود العقار / المبنى المجاور</th>
					<th> رقم المخالفة </th>
				</tr>
				<c:forEach var="externalViolation" items="${msg}">
					<c:url var="deletelink" value="deleteexternalviolation">
						<c:param name="evnvn"
							value="${externalViolation.evNewViolationNo}"></c:param>
					</c:url>
					<c:url var="getexternalviolationdatalink" value="getexternalviolation">
						<c:param name="evnvn"
							value="${externalViolation.evNewViolationNo}"></c:param>
					</c:url>
					<tr>
						<td style="text-align: center"><a href="${deletelink}">حذف</a>&nbsp;&nbsp;&nbsp;<a href="${getexternalviolationdatalink}">تعديل</a></td>
						<td style="text-align: center"><c:out value="${externalViolation.exRelatedBuildingNo}" /></td>
						<td style="text-align: center"><c:out value="${externalViolation.exRepeatedSize}" /></td>
						<td style="text-align: center"><c:out value="${externalViolation.ezLandSize}" /></td>
						<td style="text-align: center"><c:out value="${externalViolation.evStatus}" /></td>
						<td style="text-align: center"><c:out value="${externalViolation.evArchitecturalStyle}" /></td>
						<td style="text-align: center"><c:out value="${externalViolation.evNumberOfFloors}" /></td>
						<td style="text-align: center"><c:out value="${externalViolation.evViolationActivity}" /></td>
						<td style="text-align: center"><c:out value="${externalViolation.evViolationType}" /></td>
						<td style="text-align: center"><c:out value="${externalViolation.evRelatedBuildingBarcode}" /></td>
						<td style="text-align: center"><c:out value="${externalViolation.evNewViolationNo}" /></td>
					</tr>
				</c:forEach>
			</table>
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