<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>日検索</title>
<link href="<c:url value="/resources/css/table.css"/>" rel="stylesheet">
</head>
<body>


	<table>
		<tr>
			<th>開始日:</th>
			<th>終了日:</th>
			<th>場所:</th>
			<th>内容:</th>
			<th>会社:</th>
			<th>報告:</th>
			<th>報告日:</th>
			<th>メモ:</th>
		</tr>
		<c:forEach var="d" items="${day}">

			<tr>
				<td><c:out value="${d.start_day}" /></td>
				<td><c:out value="${d.finish_day}" /></td>
				<td><c:out value="${d.place}" /></td>
				<td><c:out value="${d.content}" /></td>
				<td><c:out value="${d.company}" /></td>
				<td><c:out value="${d.report}" /></td>
				<td><c:out value="${d.report_day}" /></td>
				<td><c:out value="${d.memo}" /></td>

			</tr>
		</c:forEach>
	</table>


</body>
</html>