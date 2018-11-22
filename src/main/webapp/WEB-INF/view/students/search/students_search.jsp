<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<html>
<head>

<meta charset=UTF-8>
<title>生徒検索画面</title>

</head>
<body>

	<f:form action="search_s_day" method="get">
		<p>
			日：<input type="date" name="day">
		</p>

		<input type="submit" value="検索">

	</f:form>

	<f:form action="search_s_com" method="get">
		<p>
			会社名：<input type="text" name="company">
		</p>

		<input type="submit" value="検索">
	</f:form>

</body>
</html>