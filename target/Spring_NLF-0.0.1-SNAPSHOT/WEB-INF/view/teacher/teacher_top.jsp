<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教師-Top-</title>
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<body>
	<div id="top_box">
		<p class="top_name">
			<!-- /以降がcodeで編集すると勝手に変更されるから注意 -->
			<a class="top_design" href="<c:url value="/index.jsp"/>">就職活動報告アプリ</a>
		</p>
	</div>


	<a class="font_design" href="<c:url value="/check_t"/>">就職活動確認</a>
	<a class="font_design" href="<c:url value="/search_t"/>">検索・閲覧</a>

	<%-- 今後の課題
	<a class="font_design" href="<c:url value="/chat_t"/>">生徒とチャット</a>
	 --%>
	 
	<a class="font_design" href="<c:url value="/general_t"/>">設定</a>
	<a class="font_design" href="<c:url value="/add_t"/>">生徒管理</a>





	<f:form action="logout" method="post">
		<input type="submit" value="ログアウト">
	</f:form>

</body>
</html>