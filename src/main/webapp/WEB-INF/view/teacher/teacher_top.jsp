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
<link href="<c:url value="/resources/css/common.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/home.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/icon.css"/>" rel="stylesheet">
<script type="text/javascript"
	src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4ff17589278d8b3a"></script>
</head>
<body>

	<div id="top_box">
		<p class="top_name">
			<!-- /以降がcodeで編集すると勝手に変更されるから注意 -->
			<a class="top_design" href="<c:url value="/teacher_top"/>">就職活動報告アプリ</a>
		</p>
	</div>

	<!--就職活動申請-->
	<a class="share_btn2 shtw" href="<c:url value="/check_t"/>"> 確認 </a>
	<!--Chat-->
	<a class="share_btn2 shfb"href="#">会話 </a>
	<!--検索-->
	<a class="share_btn2 shhtb" href="<c:url value="/search_t"/>">検索</a>
	<a class="share_btn2 shpkt" href="<c:url value="/general_t"/>"> 設定
	</a>
	<a class="share_btn2 shfdly" href="<c:url value="/add_t"/>"> 管理 </a>







	<div class="form_box">
		<f:form action="logout_t" method="post">
			<input type="submit" class="raised" value="ログアウト">
		</f:form>
	</div>


</body>
</html>