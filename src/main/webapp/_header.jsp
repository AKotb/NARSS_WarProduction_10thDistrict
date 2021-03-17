<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="header">
	<div class="container header">
		<!-- Header | Logo, Menu ================================================== -->
		<header>
			<div class="logo">
				<a href="index.jsp"><img src="resources/images/logo-1.png" alt="" style="width: 180px; height: 110px;"/></a>
			</div>
			<div class="systemtitle">
				<span>قاعدة بيانات مكانية ثنائية و ثلاثية الأبعاد لتوثيق مباني الحي العاشر - مدينة نصر</span>
			</div>
			<div class="mainmenu">
				<div id="mainmenu">
					<ul class="sf-menu">
						<li><a href="about.jsp"><span class="home"><img
									src="resources/images/about.png" alt="" /></span>عن المشروع</a></li>
						<li><a href="dashboard.jsp"><span class="home"><img
									src="resources/images/dashboard.png" alt="" /></span>الإعدادات</a></li>
						<li><a href="cityengineviewer.jsp"><span class="home"><img
									src="resources/images/cityengine.png" alt="" /></span>CityEngine بيانات</a></li>
						<li><a href="3dlasviewer.jsp"><span class="home"><img
									src="resources/images/3d-data.png" alt="" /></span>ثلاثية الأبعاد</a></li>
						<li><a href="index.jsp" id="visited"><span class="home"><img
									src="resources/images/home.png" alt="" /></span>الرئيسية</a></li>
					</ul>
				</div>

				<!-- Responsive Menu -->
				<form id="responsive-menu" action="#" method="post">
					<select>
						<option value="">Navigation</option>
						<option value="about.jsp">عن المشروع</option>
						<option value="dashboard.jsp">الإعدادات</option>
						<option value="cityengineviewer.jsp">CityEngine بيانات</option>
						<option value="3dlasviewer.jsp">ثلاثية الأبعاد</option>
						<option value="index.jsp">الرئيسية</option>
					</select>
				</form>
			</div>
		</header>
	</div>
</div>