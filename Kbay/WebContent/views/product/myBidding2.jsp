<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<style type="text/css">
	#div_paging {
		height: 10px;
	}
	#div_footer {
		height: 20px;
	}
</style>
</head>
<body>
	<div class="div_title" align="center">
		<span>
		<c:if test="${gubun == null }">
			<h3 class="title0" align="center">나의 경매목록 > 등록상품목록</h3>
		</c:if>
		<c:if test="${gubun == 1 }">
			<h3 class="title0"  align="center">나의 경매목록 > 등록상품목록</h3>
		</c:if>
		<c:if test="${gubun == 2 }">
			<h3 class="title0"  align="center">나의 경매목록 > 경매참여목록</h3>
		</c:if>
		<c:if test="${gubun == 3 }">
			<h3 class="title0"  align="center">나의 경매목록 > 상품구매목록</h3>
		</c:if>
		</span>
		<span>
		<a href="../product/productInsertForm.do"><button id="btn_prodInsert">상품등록</button></a>
		</span>
	</div>
	<!-- <div class="div_title">	
		<a href="../product/productInsertForm.do"><button id="btn_prodInsert">상품등록</button></a>
	</div> -->
	<div id="sidemenu">
		
		<ul id="listmenu">
			<li><a href="../product/myBidding.do?gubun=1&pageNum=1">등록상품목록</a></li>
			<li><a href="../product/myBidding.do?gubun=2&pageNum=1">경매참여목록</a></li>
			<li><a href="../product/myBidding.do?gubun=3&pageNum=1">상품구매목록</a></li>
		</ul>
		
	</div>
	<div id="content" align="center">
		<table class="table table-hover">
			<tr><th>순서</th><th>상품명</th><th>대분류</th><th>소분류</th><th>가격</th>
				<th>사용여부</th><th>경매시작일</th><th>경매마감일</th><th>경매상황</th></tr>
		
			<c:if test="${empty list }">
				<tr>
					<c:if test="${gubun == 1 }">
						<td colspan="9" align="center">등록한 상품이 없습니다</td>
					</c:if>
					<c:if test="${gubun == 2 }">
						<td colspan="9" align="center">경매에 참여 중인 상품이 없습니다</td>
					</c:if>
					<c:if test="${gubun == 3 }">
						<td colspan="9" align="center">구매한 상품이 없습니다</td>
					</c:if>
				</tr>
			</c:if>
			<c:if test="${not empty list }">
				
				<c:forEach var="p" items="${list }">
					<tr>
						<c:set var="total" value="${total }"></c:set>
						<td>${total}</td><c:set var="total" value="${total - 1 }"></c:set>
						<td><a href="productDetail.do?p_num=${p.p_num }&gubun=${gubun}&pageNum=${currentPage}">${p.p_name }</a></td>
						<td>${p.p_class_name1 }</td>
						<td>${p.p_class_name2 }</td>
						<td>${p.p_price }</td>
						<td>${p.p_used }</td>
						<td>${p.p_start_date }</td>
						<td>${p.p_end_date }</td>
						<td>${p.p_auct_desc }</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<div id="div_paging"></div>
		<div>
			<c:if test="${startPage > pagePerBlock }">
				<a href="myBidding.do?gubun=${gubun}&pageNum=${startPage-1 }">[이전]</a>
			</c:if>		
			<c:forEach var="i" begin="${startPage }" end="${endPage }">
				<a href="myBidding.do?gubun=${gubun}&pageNum=${i }">${i }</a>
			</c:forEach>
			<c:if test="${endPage < totPage }">
				<a href="myBidding.do?gubun=${gubun}&pageNum=${endPage+1 }">[다음]</a>
			</c:if>
		</div>
	</div>
	<div id="div_footer"></div>
</body>
</html>