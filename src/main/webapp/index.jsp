<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>

<html>

<head>
<meta charset=UTF-8>
<title>就職</title>
<link href="<c:url value="/resources/css/test.css"/>" rel="stylesheet">
<link href="<c:url value=" resources/css/main.css"/>" rel="stylesheet">
</head>

<body>
			<div id="top">
				<p class="top_name">
				<!-- /以降がcodeで編集すると勝手に変更されるから注意 -->
					<a href="<c:url value="/index.jsp"/>">就職活動報告アプリ</a>
				</p>
			</div>

	<h2>教師</h2>
	<form action="teacher_login" method="get">

		<div>
			<input type="submit" value="ログイン">
		</div>

	</form>
	
	
	<h2>生徒</h2>
	<form action="students_login" method="get">

		<div>
			<input type="submit" value="ログイン">
		</div>

	</form>
</body>

</html>