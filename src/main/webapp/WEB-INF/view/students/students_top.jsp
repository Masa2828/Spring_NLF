<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生徒-Top-</title>
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<body>
	<div id="top_box">
		<p class="top_name">
			<!-- /以降がcodeで編集すると勝手に変更されるから注意 -->
			<a class ="top_design" href="<c:url value="/index.jsp "/>">就職活動報告アプリ</a>
		</p>
	</div>


	<a class ="font_design" href="<c:url value="/application_s"/>">就職活動申請</a>
	<a class ="font_design" href="<c:url value="/correction_s"/>">就職活動修正</a>
	<a class ="font_design" href="<c:url value="/report_s"/>">就職活動報告</a>
	<a class ="font_design" href="<c:url value="/search_s"/>">検索・閲覧</a>
	<a class ="font_design" href="<c:url value="/chat_s"/>">先生とチャット</a>
	<a class ="font_design" href="<c:url value="/general_s"/>">設定</a>


	<p>ログアウト</p>

</body>
</html>