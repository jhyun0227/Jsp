<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="deco"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html><html lang="ko"><head><meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><deco:title></deco:title></title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<style media="screen">
	* {
		margin: 0;
		padding: 0;
	}
	
	header {
		min-width: 300px;
		height: 80px;
		background-color: #DBFFD5;
		font-size: 30px;
		color: #1A4715;
		position: relative;
	}
	
	header p {
		position: absolute; /* top: 50%; left: 50%; */
		transform: translateX(-50%) translateY(-50%);
	}
	
	#dm_ul {
		min-width: 300px;
		background-color: #DBFFD5;
		text-align: center;
		z-index: 3;
	}
	
	.dropmenu ul ul {
		position: absolute;
		display: none;
		z-index: 3;
	}
	
	.dropmenu ul ul li {
		display: block;
		background-color: #F6FFCC;
		color: black;
		z-index: 3;
	}
	
	.dropmenu ul li {
		display: inline-block;
		margin-left: -5.5px;
		z-index: 3;
	}
	
	.dropmenu ul li a {
		display: block;
		width: 150px;
		color: black;
		line-height: 43px;
		text-decoration: none;
		z-index: 3;
	}
	
	.dropmenu ul li a:hover {
		background-color: #DBFFD5;
		color: #476600;
		z-index: 3;
	}
</style>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<deco:head></deco:head>
</head><body>
<div class="container">
	<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<a href="../main/Main.do"><img alt="kbay_Logo" src="../images/kbay_logo.png"></a>
		</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="검색">
				</div>
					<button type="submit" class="btn btn-default">GO</button>
			</form>
			
			<ul class="nav navbar-nav navbar-center">
				<li><a class="btn btn-default" role="button" href="../login/loginForm.do">로그인 </a></li>
				<li><a class="btn btn-default" role="button" href="../login/joinForm.do">회원가입</a></li>
				<li><a class="btn btn-default" role="button" href="../admin/AdminLoginForm.do">관리자</a></li>
			</ul>
			
		</div>
	</nav>
</div>
<p>
	<hr>
	<div class="dropmenu">
		<ul id="dm_ul">
			<li><a href="../main/Main.do">Home</a></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=A&class_id2=A1">Fashion</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=A&class_id2=A1">여성의류</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=A&class_id2=A2">남성의류</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=A&class_id2=A3">액세서리</a></li>
				</ul></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=B&class_id2=B1">Electric</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=B&class_id2=B1">스마트홈</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=B&class_id2=B2">컴퓨터</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=B&class_id2=B3">핸드폰</a></li>
				</ul></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=C&class_id2=C1">Sports</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=C&class_id2=C1">피트니스</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=C&class_id2=C2">캠핑용품</a></li>
				</ul></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=D&class_id2=D1">Health&Beauty</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=D&class_id2=D1">코스매틱</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=D&class_id2=D2">건강식품</a></li>
				</ul></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=E&class_id2=E1">Collection</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=E&class_id2=E1">피규어</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=E&class_id2=E2">빈티지</a></li>
				</ul></li>
			<li><a href="../knotice/KnoticeList.do">Notice</a></li>
			<li><a href="../board/B_list.do">Q&A</a></li>
		</ul>
	</div>
	<script type="text/javascript">
		$(".dropmenu ul li").hover(function() {
			$(this).find("ul").stop().fadeToggle(300);
		});
	</script>
	<hr>
	<!-- <div id="body" align="center"> -->
	<div class="container">
		<deco:body></deco:body>
	</div>
	<div id="footer" align="center">
		<hr>
		<p>
			서울 강남구 테헤란로 7길 Kbay Tel. 02-1234-5678 <br> Copyright ⓒ 2018 by
			Kbay, Design by Kbay
	</div>
	
</body></html>