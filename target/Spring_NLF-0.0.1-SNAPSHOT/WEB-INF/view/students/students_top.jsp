<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生徒-Top-</title>
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/common.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/home.css"/>" rel="stylesheet">
</head>
<body>
	<div id="top_box">
		<p class="top_name">
			<!-- /以降がcodeで編集すると勝手に変更されるから注意 -->
			<a class ="top_design" href="<c:url value="/index.jsp"/>">就職活動報告アプリ</a>
		</p>
	</div>


	<%-- <a class ="font_design" href="<c:url value="/application_s"/>">就職活動申請</a>
	<a class ="font_design" href="<c:url value="/correction_s"/>">就職活動修正</a>
	<a class ="font_design" href="<c:url value="/report_s"/>">就職活動報告</a>
	<a class ="font_design" href="<c:url value="/search_s"/>">検索・閲覧</a>

	今後の課題
	<a class ="font_design" href="<c:url value="/chat_s"/>">先生とチャット</a>
	
	<a class ="font_design" href="<c:url value="/general_s"/>">設定</a>


	<f:form action="logout" method="post">
		<input type="submit" value="ログアウト">
	</f:form> --%>
	
	
	
	<nav class="main-menu">
        <div>
            <a class="logo" href="http://startific.com">
            </a>
        </div>
        <div class="settings"></div>
        <div class="scrollbar" id="style-1">
            <ul>
                <!-- 1st -->
                <li class="darkerli">
                    <a href="home.html">
                        <i class="fa fa-home fa-lg"></i>
                        <span class="nav-text">home</span>
                    </a>
                </li>

                <!-- 2nd -->
                <li class="darkerli">
                    <a href="../application/students_application.html">
                        <i class="fa fa-desktop fa-lg"></i>
                        <span class="nav-text">application</span>
                    </a>
                </li>

                <div class="addthis_default_style addthis_32x32_style">

                    <div style="position:absolute; margin-left: 56px;top:3px;">

                        <a href="https://www.instagram.com/apple_children_inc/?hl=ja" target="_blank" class="share-popup"><img src="/resources/img/instagram.png" width="30px" height="30px"></a>

                        <a href="https://twitter.com/ApCh_Inc" target="_blank" class="share-popup"><img src="https://cdn1.iconfinder.com/data/icons/metro-ui-dock-icon-set--icons-by-dakirby/512/Twitter_alt.png" width="30px" height="30px"></a>

                        <a href="https://plusone.google.com/_/+1/confirm?hl=en&url=_URL_&title=_TITLE_" target="_blank" class="share-popup">
                            <img src="/resources/img/web.png" width="30px" height="30px">
                        </a>
                    </div>
                    <script type="text/javascript">
                        var addthis_config = {
                            "data_track_addressbar": true
                        };
                    </script>
                    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4ff17589278d8b3a"></script>

                    <!-- <span class="twitter"></span>
                    <span class="google"></span>
                    <span class="fb-like">
                        <iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Ffacebook.com%2Fstartific&amp;width&amp;layout=button&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=35" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:35px;" allowTransparency="true"></iframe>

                    </span>よくわからん -->
                    <span class="nav-text">
                    </span>

                    <!-- 3rd -->
                    <li class="darkerli">
                        <a href="<c:url value="/search_s"/>">
                            <i class="fa fa-shopping-cart"></i>
                            <span class="nav-text">seach</span>
                        </a>
                    </li>

                    <li class="darkerli">
                        <a>
                            <div class="hidden_box">
                                <label for="label1"><span class="nav-text">　　　　　クリックして表示</span></label>
                                <input type="checkbox" id="label1" class="hidden_check" />
                                <div class="hidden_show">
                                    <!--非表示ここから-->
                                    　　　　日付<br>　　　　
                                    <input type="date" name="date"><br>
                                    　　　　活動会社名<br>　　　　<input type="text" name="company"><br>
                                    　　　<input type="button" onClick="location.href='../search/students_search.html'" value="検索">
                                    <!--ここまで-->
                                </div>
                            </div>
                        </a>
                    </li>
                    <!-- 4th -->
                    <li class="darkerli">
                        <a href="../search/students_search.html">
                            <i class="fa fa-shopping-cart"></i>
                            <span class="nav-text">chat</span>
                        </a>
                    </li>
                </div>
            </ul>
        </div>
    </nav>
    <p class="img">
        <a href="../students_top.html"><img src="src/main/webapp/resources/img/logout.png"></a>
    </p>


</body>
</html>