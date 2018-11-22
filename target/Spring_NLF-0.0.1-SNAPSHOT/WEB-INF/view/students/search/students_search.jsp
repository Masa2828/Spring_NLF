<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>検索・閲覧</title>
<link href="<c:url value="/resources/css/common.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/students_search_home.css"/>" rel="stylesheet">

</head>
<body>


	<div class="box">
		<input type="button" onClick="location.href='../students_top.html'"
			value="トップに戻る">
	</div>
	<h1>検索画面</h1>
	<table class="home">
		<thead>
			<tr>
				<th>日付</th>
				<th>活動会社名</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="date" name="date"></td>
				<td><input type="text" name="company"></td>
			</tr>
		</tbody>
	</table>
	<br>
	<input type="button" onClick="location.href='students_search.html'"
		value="検索">

</body>
</html>