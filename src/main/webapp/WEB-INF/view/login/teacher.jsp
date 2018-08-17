<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<!DOCTYPE>
		<html>

		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>教師用</title>
			<link href="<c:url value=" resources/css/login.css "/>" rel="stylesheet">
			<link href="<c:url value=" resources/css/main.css "/>" rel="stylesheet">
		</head>

		<body>

			<div id="top">
				<p class="top_name">
				<!-- /以降がcodeで編集すると勝手に変更されるから注意 -->
					<a href="<c:url value="/index.jsp "/>">就職活動報告アプリ</a>
				</p>
			</div>


			<div id="form">
				<p class="form-title">Login</p>
				<form action="teacher_login" method="get">
					<!-- 後ほどpostに変更 -->
					<p>ID</p>
					<p class="id">
						<input type="text" name="TeacherId" id="TeacherId">
					</p>
					<p>Password</p>
					<p class="pass">
						<input type="password" name="TeacherPass" id="TeacherPass">
					</p>

					<p class="submit">
						<input type="submit" value="Login" />
					</p>
				</form>
			</div>




		</body>

		</html>