<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="deco"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><deco:title></deco:title></title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style type="text/css">
/* header {
	height: 70px;
	background-color: yellow;
}

nav ul {
	float: right;
}

nav ul li {
	float: left;
	margin: 0 20px;
	list-style: none;
} */

/* #sidemenu {
	clear: both;
	float: left;
	height: 250px;
	width: 20%;
	background-color: #EAEAEA
} */

/* article {
	float: right;
	width: 75%;
}

figure {
	float: right;
	margin: 10px;
}

figcaption {
	text-align: center;
}

#sidemenu ul {
	list-style: none;
}

footer {
	clear: both;
	background-color: purple;
	height: 50px;
}

aside {
	border: 1px solid red;
}

section {
	margin: 70px;
	background-color: cyan;
	height: 50px;
}

#footer {
	text-align: center;
	clear: both
} */
</style>
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
<!-- <style type="text/css">@import url("../../common.css");</style> -->
<!-- <style type="text/css">
table {
	border-collapse: collapse;
	border-top: 2px solid gray;
	border-bottom: 2px solid gray;
	width: 80%;
}

th, td {
	margin: 0px;
	padding: 8px;
	border-left-width: 0px;
	border-right-width: 0px;
}

th {
	background-color: #D9E5FF;
	border-bottom: 2px solid gray;
}

td {
	border: 1px solid gray;
	border-left-width: 0px;
	border-right-width: 0px;
	text-align: center;
}

table tr:hover {
	background-color: #FC6;
	cursor: pointer;
	/* cursor: hand; */
}

.title0 {
	margin: 20px;
}
</style> -->
<!-- <script type="text/javascript" src="view/js/jquery.js"></script> -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<deco:head></deco:head>
</head>
<body>
	<div class="container">
	<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<a href="../main/Main.do"><img alt="??????" src="../../images/kbaylogo.jpg"></a>
		</div>
		
		<div class="collapse navbar-collapse navbar-ex1-collapse">
		<!-- ????????? -->
		<form class="navbar-form navbar-right" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="??????">
			</div>
				<button type="submit" class="btn btn-default">??????</button>
		</form>
		
		<c:if test="${id == null || id == ''}">
			<a href="../login/loginForm.do"><button>?????????</button></a>
			<a href="../login/joinForm.do"><button>????????????</button></a>
			<!-- <a href="../admin/AdminMain.do"><button>?????????</button></a> -->
			<a href="../admin/AdminLoginForm.do"><button>?????????</button></a>
		</c:if>
		<c:if test="${id != null }">
			${id }???, ???????????????.
			<a href="../product/myBidding.do?gubun=1&pageNum=1"><button>?????? ????????????</button></a>
			<a href="../kmember/myPageView.do"><button>?????? ????????????</button></a>
			<a href="../login/logout.do"><button>????????????</button></a>
		</c:if>
		</div>
	</nav>
	
	<p>
	<hr>
	<div class="dropmenu">
		<ul id="dm_ul">
			<li><a href="../main/Main.do">Home</a></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=A&class_id2=A1">Fashion</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=A&class_id2=A1">????????????</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=A&class_id2=A2">????????????</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=A&class_id2=A3">????????????</a></li>
				</ul></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=B&class_id2=B1">Electric</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=B&class_id2=B1">????????????</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=B&class_id2=B2">?????????</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=B&class_id2=B3">?????????</a></li>
				</ul></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=C&class_id2=C1">Sports</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=C&class_id2=C1">????????????</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=C&class_id2=C2">????????????</a></li>
				</ul></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=D&class_id2=D1">Health&Beauty</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=D&class_id2=D1">????????????</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=D&class_id2=D2">????????????</a></li>
				</ul></li>
			<li><a
				href="../productlist/ProductListView.do?class_id1=E&class_id2=E1">Collection</a>
				<ul>
					<li><a
						href="../productlist/ProductListView.do?class_id1=E&class_id2=E1">?????????</a></li>
					<li><a
						href="../productlist/ProductListView.do?class_id1=E&class_id2=E2">?????????</a></li>
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
	<div id="footer">
		<hr>
		<p>
			?????? ????????? ???????????? 7??? Kbay Tel. 02-1234-5678 <br> Copyright ??? 2018 by
			Kbay, Design by Kbay
	</div>
	</div>
</body>
</html>