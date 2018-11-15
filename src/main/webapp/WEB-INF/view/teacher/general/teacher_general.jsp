<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>設定</title>
</head>
<body>

	<div>

		<form:form action="" method="get">
			<c:forEach var="teacher" items="${teacher_info}">
				<div></div>

				<p>
					教師ID：<input type="text" id="UpCode" name="UpCode"
						value=${teacher.teacher_id }/>
				</p>
				<p>
					教師名：<input type="text" id="UpName" name="UpName"
						value=${teacher.teacher_name } />
				</p>

				<p>
					パスワード：<input type="text" id="UpGroup" name="UpGroup"
						value=${teacher.password } />
				</p>

				<p>
					学科：<input type="text" id="UpGroup" name="UpGroup"
						value=${teacher.course } />
				</p>


				<input type="submit">
			</c:forEach>
		</form:form>




	</div>

</body>
</html>