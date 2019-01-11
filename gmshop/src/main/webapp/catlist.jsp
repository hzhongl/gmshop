<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE	html PUBLIC	"-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html	xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>贵美商城</title>
 <link rel="stylesheet"	type="text/css"	href="${pageContext.request.contextPath}/css/global.css"	/>
 <link rel="stylesheet"	type="text/css"	href="${pageContext.request.contextPath}/css/layout.css"	/>
 <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
 <script type="text/JavaScript">
 	function multiCheck(oThis){
 		var oInput=document.getElementsByTagName("input");
 		for (var i=1;i<oInput.length;i++){ 	
 				oInput[i].checked=oThis.checked;}
 	}
	</script>
</head>
<body>
<div id="container">
	<iframe id="header" runat="server" src="${pageContext.request.contextPath}/header.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>
	<div class="catlist a_c">
		<ul class="w20p check">
			<h3><input type="checkbox" name="checkall" onclick="multiCheck(this)" />全选</h3>
			<c:forEach items="${page.list}" var="product">
			<li><input type="checkbox" /></li>
			</c:forEach>
		</ul>
	
		<ul class="w20p">
			<h3>商品图片</h3>
			
			<c:forEach items="${page.list}" var="product">
	
	<li>
	
	<a href="${pageContext.request.contextPath}/productController/findByid?id=${product.id}">

	<c:forEach items="${product.images}" var="img" begin="0" end ="0">
	<img src="${pageContext.request.contextPath}/upload/${img.url}" width=90 height=90 alt="" />
	</c:forEach>
	</a></li>
	
	</c:forEach>
		<!-- 	
			<li><a href="info.jsp"><img src="images/list2.jpg" alt="" /></a></li>
			<li><a href="info.jsp"><img src="images/list3.jpg" alt="" /></a></li>
			<li><a href="info.jsp"><img src="images/list4.jpg" alt="" /></a></li> -->
		</ul>
		<ul class="w50p info">
			<h3>商品名称/出售者/联系方式</h3>
			<c:forEach items="${page.list}" var="product">
			<li><a href="${pageContext.request.contextPath}/productController/findByid?id=${product.id}">${product.name}</a><br />出售者：<a href="#">ling112233<br /><a href="#"><img src="${pageContext.request.contextPath}/images/contactme.gif" alt="alt" /> <img src="${pageContext.request.contextPath}/images/addfav.gif" alt="收藏" />收藏</a></li>
			</c:forEach>

		</ul>
		<ul class="w10p price">
			<h3>价格</h3>
			<c:forEach items="${page.list}" var="product">
			<li>一口价：<br />${product.price}</li>
			</c:forEach>
		</ul>
		  <nav aria-label="Page navigation">
  <ul class="pagination">
    <li>
    <c:choose>
    	<c:when test="${page.isFirstPage==false}">
    		<a href="?pn=${page.pageNum-1}&id=${id}" aria-label="Previous">
    			<span aria-hidden="true">&laquo;</span>
    		</a>
    	</c:when>
    	<c:otherwise>
		    <a href="#" aria-label="Previous">
    			<span aria-hidden="true">&laquo;</span>
    		</a>	
    	</c:otherwise>
    </c:choose>

    </li>
    <li>
   		 <a href="#" aria-label="Previous">
   		 <span aria-hidden="true">当前：${page.pageNum}页 总共：${page.pages}页</span>
   		 </a>
    </li>
    <li>
    <c:choose>
		<c:when test="${page.isLastPage==false}">
    		<a href="?pn=${page.pageNum + 1}&id=${id}" aria-label="Next">
    			<span aria-hidden="true">&raquo;</span>
    		</a> 
    	</c:when>
    <c:otherwise>
		<a href="#" aria-label="Next">
    		<span aria-hidden="true">&raquo;</span>
    	</a>	
    </c:otherwise>
    </c:choose>
    </li>
    <li>
	当前页${page.pageNum}
	每页的数量${page.pageSize}
	当前页的数量${page.size}
	总记录数${page.total}
	总页数${page.pages}</li>
  </ul> 
    
	</div>
	<iframe id="footer"  src="${pageContext.request.contextPath}/footer.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>
</div> <!--container end-->	
</body>
</html>
