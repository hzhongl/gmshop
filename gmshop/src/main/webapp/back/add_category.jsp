<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
<title>添加商品分类</title>
</head>
<body>
	<form id="form">
			
		分类名:<input type="text" name="cname" id = "cname"/>
		<br/>
		<select name="parentId">
		<option value="" id ="parentId"name="parentId">无</option>
		<c:forEach items="${page}" var="items">
		<option value="${items.cid }" id ="parentId"name="parentId">${items.cname }</option>
		</c:forEach>
		</select>
		<button type="submit">添加</button>
	</form>
<script>
$(function(){
	$("#form").ajaxForm({
			url:"${pageContext.request.contextPath }/categoryController/addCategory",
			type:"post",
			success:function(data){
				alert("添加成功");
				window.location.reload();
			},
	});
	
});
</script>
<!-- <script>
	function add(){
	var cname = $("#cname").val();
	var parentId = $("#parentId").val();
	$.ajax({
		url : "${pageContext.request.contextPath }/categoryController/addCategory",
		type : "post", 
		data :JSON.stringify({cname:cname,parentId:parentId}),
		contentType : "application/json;charset=UTF-8",
		dataType : "json",
		success : function(data){	    
			if(data != null){					
			  alert("上传成功");
			 window.location.reload();
			}
	
		}
	});
	}
</script> -->
</body>
</html>