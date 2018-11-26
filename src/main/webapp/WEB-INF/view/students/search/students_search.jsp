<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>生徒検索画面</title>
<link href="<c:url value="/resources/css/search.css"/>" rel="stylesheet">
<script type="text/javascript"
	src="<c:url value="/resources/js/search.js"/>"></script>
</head>
<body>

	<div class="tab_wrap">
		<input id="tab1" type="radio" name="tab_btn" checked> <input
			id="tab2" type="radio" name="tab_btn"> <input id="tab3"
			type="radio" name="tab_btn">

		<div class="tab_area">
			<label class="tab1_label" for="tab1">日付</label> <label
				class="tab2_label" for="tab2">会社名</label>
		</div>
		<div class="panel_area">
			<div id="panel1" class="tab_panel">
				<f:form action="search_s_day" method="get">
					<p>
						<input type="date" name="day">
					</p>
			<div class ="search_box">
					<input type="submit" value="検索">
			</div>
				</f:form>
			</div>
			<div id="panel2" class="tab_panel">
				<f:form action="search_s_com" method="get">
					<p>
						<input type="text" name="company">
					</p>
			<div class ="search_box">
					<input type="submit" value="検索">
			</div>
				</f:form>
			</div>
		</div>
	</div>







</body>
</html>