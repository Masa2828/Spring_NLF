<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<link href="<c:url value="/resources/css/table.css"/>" rel="stylesheet">
<title>会社検索</title>
</head>
<body>

	<table class="table">
		<tr>
			<!-- 8つ -->
			<th>開始日:</th>
			<th>終了日:</th>
			<th>場所:</th>
			<th>内容:</th>
			<th>会社:</th>
			<th>報告:</th>
			<th>報告日:</th>
			<th>メモ:</th>
		</tr>
		<c:forEach var="co" items="${company}">

			<tr>
				<td><c:out value="${co.start_day}" /></td>
				<td><c:out value="${co.finish_day}" /></td>
				<td><c:out value="${co.place}" /></td>
				<td><c:out value="${co.content}" /></td>
				<td><c:out value="${co.company}" /></td>
				<td><c:out value="${co.report}" /></td>
				<td><c:out value="${co.report_day}" /></td>
				<td><c:out value="${co.memo}" /></td>

			</tr>
		</c:forEach>
	</table>




</body>
</html>