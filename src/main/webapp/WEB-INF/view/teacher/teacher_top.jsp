<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<a href="<c:url value="/index.jsp "/>">就職活動報告アプリ</a>
		</p>
	</div>



	<!-- a タグで以下の4つ飛ばす -->
	<p>就職活動確認</p>
	<p>検索・閲覧</p>
	<p>生徒とチャット</p>


	<p>ログアウト</p>

</body>
</html>