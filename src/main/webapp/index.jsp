<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>

<html>

<head>
<meta charset=UTF-8>
<title>就職</title>
<link href="<c:url value="/resources/css/test.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<script type="text/javascript"
	src="<c:url value="/resources/js/move.js"/>"></script>
</head>

<body>

	<div id="top_box">
		<p class="top_name">
			<!-- /以降がcodeで編集すると勝手に変更されるから注意 -->
			<a class ="top_design" href="<c:url value="/index.jsp"/>">就職活動報告アプリ </a>
		</p>
	</div>

<div class="box">

	<ul id="switch">
		<li id="a">教師</li>
		<li id="b">生徒</li>
	</ul>

	<div id="divA">

		<form action="teacher_login" method="get">
			<div>
				<input type="submit" value="Teachers Login" class="button">
			</div>
		</form>

	</div>


	<div id="divB">

		<form action="students_login" method="get">

			<div class ="box">
				<input type="submit" value="Students Login" class="button">
			</div>

		</form>

	</div>

</div>

</body>

</html>