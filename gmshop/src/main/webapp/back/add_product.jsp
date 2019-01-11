<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>添加商品</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.form.js"></script>

</head>

<body>

	<form id= "form2" action="${pageContext.request.contextPath}/productController/addProduct"  method="post"
		enctype="multipart/form-data">
		名称:<input type="text" name="name" /> <br /> 价格:<input
			type="text" name="price" /> <br /> 运费:<input type="text"
			name="freight" /> <br /> 失效时间:<input type="text"
			name="expireTime" /> yyyy/MM/dd格式 <br /> 库存:<input type="text"
			name="stockNum" /> <br /> 所在地:<input type="text"
			name="sellAddress" /> <br /> 
			商品类型: <select name="categoryId">
		<option value="" id ="categoryId"name="categoryId">无</option>
		<c:forEach items="${page}" var="items">
		<option value="${items.cid }" id =""categoryId""name=""categoryId"">${items.cname }</option>
		</c:forEach>
		</select>
		<br/>
		商品主图片:<input type="file" name="images" /> <br/>
		商品副图片1:<input type="file" name="images" /> <br/>
		商品副图片2:<input type="file" name="images" /> <br/>
		商品副图片3:<input type="file" name="images" /> <br/>
		商品副图片4:<input type="file" name="images" /> <br />
		<button type="submit" >添加</button>
		<button type="reset">重置</button>
	</form>
</body>

</html>