<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<meta charset="utf-8">
<title>Welcome</title>

<!-- ******** css ******** -->
<!-- lib css -->
<link rel="stylesheet" type="text/css"
	href='<spring:url value="/resources/css/ui.tabs.css" />' />

<!-- app css -->
<link rel="stylesheet" type="text/css"
	href='<spring:url value="/resources/css/base.css" />' />
<link rel="stylesheet" type="text/css"
	href='<spring:url value="/resources/css/panel.css" />' />
<link rel="stylesheet" type="text/css"
	href='<spring:url value="/resources/css/clock.css" />' />
<link rel="stylesheet" type="text/css"
	href='<spring:url value="/resources/css/video.css" />' />
<link rel="stylesheet" type="text/css"
	href='<spring:url value="/resources/css/wine.css" />' />

<!-- ********* js ******** -->
<!-- lib js -->
<script type="text/javascript" src="resources/js/lib/jquery-1.2.6.js"></script>
<script type="text/javascript"
	src="resources/js/lib/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="resources/js/lib/ui.core.js"></script>
<script type="text/javascript" src="resources/js/lib/ui.tabs.js"></script>
<script type="text/javascript"
	src="resources/js/lib/graph_radar_1_0_2/html5jp/graph/radar.js"></script>

<!-- app js -->
<script type="text/javascript" src="resources/js/video.js"></script>
<script type="text/javascript" src="resources/js/base.js"></script>
<script type="text/javascript" src="resources/js/panel.js"></script>
<script type="text/javascript" src="resources/js/clock.js"></script>
<script type="text/javascript" src="resources/js/wine.js"></script>

<div id="mainArea">

		<!-- ヘッダエリア -->
		<div id="mainHeader">
			<p id="mainTitle">moikii2</p>
		</div>

		<!-- タブエリア -->
		<div id="tabsArea">
			<ul>
				<li><a href="#tab_myClock"><span>myClock</span></a></li>
				<li><a href="#tab_myYouTube"><span>myYouTube</span></a></li>
				<li><a href="#tab_myWine"><span>myWine</span></a></li>
			</ul>
		</div>

		<div class="tabBase">
			<!-- myClock -->
			<div id="tab_myClock">
				<div id="clock">
					<img id="clockImg" src="" alt="">
					<div id="timeBoard"></div>
				</div>
			</div>

			<!-- myYouTube -->
			<div id="tab_myYouTube">
				<dl id="panel">

					<dt>ranking</dt>
					<dd>
						<div id="itm_ranking">*** under construction ***</div>
					</dd>

					<dt>search</dt>
					<dd>
						<div id="itm_search">
							<form action="">
								<input type="text" id="keywd" name="keywd" size="30" /> <input
									type="button" id="search" value="検索" />
							</form>
							<div id="prog">
								<img src="resources/images/loader.gif" alt="" />
							</div>
							<div id="result"></div>
							<div id="pager"></div>
						</div>
					</dd>

				</dl>

			</div>

			<!-- myWine -->
				<form:form modelAttribute="placeAttrModel" action="${pageContext.request.contextPath}/test">
			<div id="tab_myWine">
				<div class="inputInfoArea">
					<table>
						<tr>
							<td class="cell1">原産地</td>
							<td class="cell2">：</td>
							<td class="cell3"><select id="country">
									<option value="none"></option>
									<option value="france">フランス</option>
									<option value="italy">イタリア</option>
									<option value="chili">チリ</option>
									<option value="australia">オーストラリア</option>
									<option value="usa">アメリカ</option>
									<option value="portgal">ポルトガル</option>
							</select></td>
						</tr>
						<tr>
							<td class="cell1">色</td>
							<td class="cell2">：</td>
							<td class="cell3"><select id="color">
									<option value="none">白</option>
									<option value="france">ロゼ</option>
									<option value="portgal">赤</option>
							</select></td>
						</tr>
						<tr>
							<td class="cell1">品名</td>
							<td class="cell2">：</td>
							<td class="cell3"><input id="wname" type="text" size="20">
							</td>
						</tr>
						<tr>
							<td class="cell1">ボリューム</td>
							<td class="cell2">：</td>
							<td class="cell3"><select id="vol">
									<option value="3">3</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">4</option>
									<option value="5">5</option>
							</select></td>
						</tr>
						<tr>
							<td class="cell1">酸味</td>
							<td class="cell2">：</td>
							<td class="cell3"><select id="acid">
									<option value="3">3</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">4</option>
									<option value="5">5</option>
							</select></td>
						</tr>
						<tr>
							<td class="cell1">タンニン</td>
							<td class="cell2">：</td>
							<td class="cell3"><select id="tannin">
									<option value="3">3</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">4</option>
									<option value="5">5</option>
							</select></td>
						</tr>
						<tr>
							<td class="cell1">果実味</td>
							<td class="cell2">：</td>
							<td class="cell3"><select id="aroma">
									<option value="3">3</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">4</option>
									<option value="5">5</option>
							</select></td>
						</tr>
						<tr>
							<td class="cell1">甘み</td>
							<td class="cell2">：</td>
							<td class="cell3"><select id="sweet">
									<option value="3">3</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">4</option>
									<option value="5">5</option>
							</select></td>
						</tr>
						<tr>
							<td class="cell1">のんだ場所</td>
							<td class="cell2">：</td>
							<spring:url var="test" value="/test" />
							<td class="cell3"><input type="text" size="30"
								onClick="formSubmit(${test})" /></td>
						</tr>
					</table>
				</div>
				<div class="radarArea">
					<canvas width="400" height="300" id="wineRadar"></canvas>
				</div>
			</div>
			<div class="opeArea">
				<input type="submit" value="登録" /> <input type="button" value="閲覧" />
				<input type="button" value="推薦" /> <input type="button" value="ToDo" />
			</div>
			</form:form>
		</div>
</div>