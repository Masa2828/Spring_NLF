<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<link href="<c:url value="/resources/css/form.css"/>" rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<title>就職活動申請</title>
</head>
<body>

	<div id="top_box">
		<p class="top_name">
			<!-- /以降がcodeで編集すると勝手に変更されるから注意 -->
			<a class="top_design" href="<c:url value="/students_top"/>">就職活動報告アプリ</a>
		</p>
	</div>

	<div class="container">
		<div class="wrapper">
			<ul class="steps">
				<li class="is-active">Step 1</li>
				<li>Step 2</li>
				<li>Step 3</li>
				<li>Step 4</li>
			</ul>
			<form class="form-wrapper" action="application_insert" method="get">
				<fieldset class="section is-active">
					<h3>Days & Place & Company</h3>
					<input type="date" id="New_Start_Day" name="New_Start_Day">
					<input type="date" id="New_End_Day" name="New_End_Day"> <input
						type="text" id="New_Place" name="New_Place" placeholder="場所">
					<input type="text" id="New_Company" name="New_Company"
						placeholder="株式会社">
					<div class="button">Next</div>
				</fieldset>
				<fieldset class="section">
					<h3>Content</h3>
					<div class="row cf">
						<div class="four col">
							<input type="radio" id="r1" name="New_Contect" value="単独説明会"
								checked> <label for="r1">
								<h4>単独説明会</h4>
							</label>
						</div>
						<div class="four col">
							<input type="radio" id="r2" name="New_Contect" value="合同説明会"><label
								for="r2">
								<h4>合同企業説明会</h4>
							</label>
						</div>
						<div class="four col">
							<input type="radio" id="r3" name="New_Contect" value="試験"><label
								for="r3">
								<h4>試験</h4>
							</label>
						</div>
					</div>
					<div class="button">Next</div>
				</fieldset>
				<fieldset class="section">
					<h3>Content</h3>
					<div class="row cf">
						<div class="four col">
							<input type="radio" id="r4" name="New_Report" value="遅刻" checked>
							<label for="r4">
								<h4>遅刻</h4>
							</label>
						</div>
						<div class="four col">
							<input type="radio" id="r5" name="New_Report" value="早退"><label
								for="r5">
								<h4>早退</h4>
							</label>
						</div>
						<div class="four col">
							<input type="radio" id="r6" name="New_Report" value="欠席"><label
								for="r6">
								<h4>欠席</h4>
							</label>
						</div>
					</div>
					<div class="button">Next</div>
				</fieldset>
				<fieldset class="section">
					<h3>Days & Memo</h3>
					<input type="date" id="New_Report_Day" name="New_Report_Day">
					<input type="text" id="New_Memo" name="New_Memo" placeholder="memo">
					<div class="button">登録へ</div>
				</fieldset>
				<fieldset class="section">
					<div class="btn">
						<input class="button_create" type="submit" value="登録">
					</div>
				</fieldset>



			</form>
		</div>
	</div>






















</body>
</html>

<script>
	$(document).ready(
			function() {
				$(".form-wrapper .button").click(
						function() {
							var button = $(this);
							var currentSection = button.parents(".section");
							var currentSectionIndex = currentSection.index();
							var headerSection = $('.steps li').eq(
									currentSectionIndex);
							currentSection.removeClass("is-active").next()
									.addClass("is-active");
							headerSection.removeClass("is-active").next()
									.addClass("is-active");

							if (currentSectionIndex === 4) {
								$(document).find(".form-wrapper .section")
										.first().addClass("is-active");
								$(document).find(".steps li").first().addClass(
										"is-active");
							}
						});
			});
</script>