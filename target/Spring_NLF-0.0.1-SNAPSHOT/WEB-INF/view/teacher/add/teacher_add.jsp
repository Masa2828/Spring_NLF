<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<html>
<head>
<link href="<c:url value="/resources/css/datatables.css"/>"
	rel="stylesheet">
<script type="text/javascript"
	src="<c:url value="/resources/js/move.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/DataTables/datatables.js"/>"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生徒追加</title>
</head>
<body>

	<c:forEach var="ob" items="${add}">

		<table id="table_id" class="display">
			<thead>
				<tr>
					<th>ID:</th>
					<th>Name:</th>
					<th>Password:</th>
					<th>性別:</th>
					<th>入学年度:</th>
					<th>在籍情報:</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><c:out value="${ob.students_id}" /></td>
					<td><c:out value="${ob.students_name}" /></td>
					<td><c:out value="${ob.password}" /></td>
					<td><c:out value="${ob.sex}" /></td>
					<td><c:out value="${ob.year}" /></td>
					<td><c:out value="${ob.enrollment}" /></td>
				</tr>

			</tbody>
		</table>

	</c:forEach>

</body>
</html>