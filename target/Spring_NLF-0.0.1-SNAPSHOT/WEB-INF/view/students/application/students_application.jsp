<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>就職活動申請</title>
</head>
<body>




	<f:form action="application_insert" method="get">
		<p>
			開始日：<input type="text" id="New_Start_Day" name="New_Start_Day">
		</p>

		<p>
			終了日：<input type="text" id="New_End_Day" name="New_End_Day">
		</p>

		<p>
			場所：<input type="text" id="New_Place" name="New_Place">
		</p>
		<p>
			内容：<input type="text" id="New_Contect" name="New_Contect">
		</p>
		<p>
			会社：<input type="text" id="New_Company" name="New_Company">
		</p>
		<p>
			届：<input type="text" id="New_Report" name="New_Report">
		</p>
		<p>
			日付：<input type="text" id="New_Report_Day" name="New_Report_Day">
		</p>
		<p>
			メモ：<input type="text" id="New_Memo" name="New_Memo">
		</p>

		<input type="submit" value="登録">
	</f:form>


</body>
</html>