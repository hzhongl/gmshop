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
          <th>名字</th>
          <th>价格</th>
          <th>运费</th>
          <th>失效时间</th>
          <th>所在地</th>
           <th>库存</th>
          <th>商品类型</th>
           <th>商品类型</th>
        </tr>
      </thead>
      <tbody> 

		       <tr> 
	          <th scope="row">${product.id}</th>
	          <td><a href="${pageContext.request.contextPath}/productController/findByid?id=${product.id}">${product.name}</a> </td>
	          <td>${product.price} </td>
	          <td>${product.freight} </td>
	          <td>${product.expireTime} </td>
	          <td>${product.sellAddress} </td>
	          <td>${product.stockNum} </td>
	          <td>${product.category.cname} </td>
	        </tr>
      </tbody>
    </table>
</div>
</body>
</html>