<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table class="table">
      <caption>产品信息</caption>
      <thead>
        <tr>
          <th>#ID</th>
          <th>name</th>
          <th>parent</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody> 
		<c:forEach items="${page.list}" var="category">
		       <tr> 
	          <th scope="row">${category.cid}</th>
	          <td>${category.cname} </td>
	          <td>${category.parent.cname} </td>
	          <td><a href="${pageContext.request.contextPath}/categoryController/delCategory?id=${category.cid}"> 删除</a> </td>
	       		
	        </tr>
	 	</c:forEach>  
      </tbody>
    </table>
    <font>${msg}</font>
    <nav aria-label="Page navigation">
  <ul class="pagination">
    <li>
    <c:choose>
    	<c:when test="${page.isFirstPage==false}">
    		<a href="?pn=${page.pageNum-1}" aria-label="Previous">
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
    		<a href="?pn=${page.pageNum + 1}" aria-label="Next">
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
  </ul> 
    
	当前页${page.pageNum}
	每页的数量${page.pageSize}
	当前页的数量${page.size}
	总记录数${page.total}
	总页数${page.pages}
</div>
</body>
</html>