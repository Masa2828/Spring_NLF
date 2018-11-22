<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<html>
<head>
<link href="<c:url value="/resources/css/table.css"/>" rel="stylesheet">
<meta charset=UTF-8>
<title>生徒追加</title>
</head>
<body>


	<table>
		<tr>
			<th>ID:</th>
			<th>Name:</th>
			<th>Password:</th>
			<th>性別:</th>
			<th>入学年度:</th>
			<th>在籍情報:</th>
		</tr>

		<c:forEach var="ob" items="${add}">
			<tr>
				<td><c:out value="${ob.students_id}" /></td>
				<td><c:out value="${ob.students_name}" /></td>
				<td><c:out value="${ob.password}" /></td>
				<td><c:out value="${ob.sex}" /></td>
				<td><c:out value="${ob.year}" /></td>
				<td><c:out value="${ob.enrollment}" /></td>
			</tr>


		</c:forEach>
	</table>

</body>
</html>