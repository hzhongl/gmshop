﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE	html PUBLIC	"-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html	xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>贵美商城-商品购买页</title>
 <link rel="stylesheet"	type="text/css"	href="${pageContext.request.contextPath}/css/global.css"	/>
 <link rel="stylesheet"	type="text/css"	href="${pageContext.request.contextPath}/css/layout.css"	/>
 <script type="text/JavaScript" defer="true">
		function openWindow(){
    var address=window.showModalDialog("${pageContext.request.contextPath}/address.jsp","","dialogWidth=340px;dialogHeight=270px");
	  document.getElementById("address").value=address;	
		}
  function priceCalc(){
  	var oTr=document.getElementById("priceTable").getElementsByTagName("tr");
  	/**
  	* 因为priceTable从第三个tr开始出现价格列表，倒数第一行结束，所以i=2，i<trObject.length-1
  	* fSum为折扣后总价
  	* fTotal为原总价
  	*/
    var fSum=0;
    var fTotal=0;
		var j=1;
  	for (var i=2;i<oTr.length-1;i++){
  	  var oTd=oTr[i].getElementsByTagName("td");
  	  var fPrice=parseFloat(oTd[j].getElementsByTagName("span")[0].innerHTML.substring(1));
			var nCount=parseInt(oTd[j+3].getElementsByTagName("input")[0].value);
			var fRealPrice=fPrice*parseInt(oTd[j+2].getElementsByTagName("span")[0].innerHTML)/100;
  	  fSum  +=fRealPrice*nCount;
			fTotal+=fPrice*nCount;
  	  //oTd[j+1].getElementsByTagName("span")[0].innerHTML='￥'+formatFloat(fRealPrice);
      }  	 
    //oTr[oTr.length-1].getElementsByTagName("td")[1].innerHTML='￥'+formatFloat(fSum);
    //oTr[oTr.length-1].getElementsByTagName("td")[2].innerHTML='你共节省：￥'+formatFloat(fTotal-fSum);
  	}
  	function remove(oThis){
  		oFather=oThis.parentNode;
  		oFather.parentNode.parentNode.removeChild(oFather.parentNode);
  		priceCalc();
		}
//	window.onload=priceCalc();
</script>
</head>
<body>
<div id="container">
	<iframe id="header" src="${pageContext.request.contextPath}/header.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>
    <div class="buy">
			<h4><img src="${pageContext.request.contextPath}/images/mycart.gif" alt="alt" /> <a href="#">全场运费一律2元</a> <a href="#" class="b" onclick="JavaScript:window.open('calc.jsp','计算器','width=200,height=200,toolbar=no,scrollbars=no,menubar=no,screenX=100,screenY=100')">简易计算器</a></h4>
      <table class="buy" cellpadding="0" cellspacing="0">
    	<tbody id="priceTable">
			<tr class="buytitle"><td colspan="6" class="b">确认商品价格与交易条件</td></tr>
      <tr>
        <td class="w364 b">&nbsp;&nbsp;&nbsp;&nbsp;商品名</td>
        <td class="w100 b">原价</td>
        <td class="w100 b">发货地</td>
        <td class="w100 b">运费</td>
        <td class="w100 b">数量</td>
        <td class="w81 b">删除</td>
      </tr>
     <%--  ${cars} --%>
      <c:forEach items="${cars}" var="products">	
       <tr class="h26 blue">
      <td><a href="${pageContext.request.contextPath}/productController/findByid?id=${products.product.id }" title="${products.product.name }">&nbsp;&nbsp;&nbsp;&nbsp;${products.product.name }</a></td>
     	<td><span class="c9">${ products.product.price}元</span></td>
       <td><span class="red">${ products.product.sellAddress}</span></td>
        <td><span class="black">${ products.product.freight}元</span></td>
       <td><input onchange="priceCalc()" type="text" value="1" maxlength="4" size="3"/></td>
        <td><a href="${pageContext.request.contextPath}/shopcar/delcar?id=${products.sid}&uid=${user.id}" onclick="remove(this)">删除</a></td>
      </tr>
      </c:forEach>
    
      <tr class="h26">
        <td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/index">继续挑选商品</a></td>
        <td class="a_c" colspan="2" id="sum" class="pl58">￥527.40</td>
      </tr>
    </tbody>
  	</table>
    <form id="buyForm" method="post" action="">
    <table class="buy">    
    <tbody>    
      <tr class="buytitle">
        <td colspan="2" >补充您的邮件地址和联系人基本信息</td>
      </tr>
      <tr>
				<td class="a_r"><label for="username">收件人：</label></td>
        <td><input type="text" name="username" id="username" />
			</tr>
      <tr>
				<td class="a_r"><label for="address">地&nbsp;&nbsp;&nbsp;址： </label></td>
        <td id="selectPlace">
        	<input type="text" name="address" id="address" />
        	<a href="javascript:openWindow()" class="b">请点击填写地址</a>
  			</td>
      </tr>      
      <tr>
				<td class="a_r"><label for="tel">电&nbsp;&nbsp;&nbsp;话：</label></td>
        <td><input class="w30" type="text" name="code"  size="4" id="tel" />-<input class="w81" type="text" name="telnumber" size="8" />-<input class="w30" type="text" name="branchnumber" size="4" /><span class="red b"></span>（区号-电话号码-分机）</td>
      </tr>
      <tr>
        <td class="h65">&nbsp;</td>
        <td><input class="imginput" type="image" src="${pageContext.request.contextPath}/images/submit.gif" /></td>
      </tr>
      </tbody>
  </table>
  </form>    		
		<iframe id="footer" src="${pageContext.request.contextPath}/footer.jsp" width="980" height="150" frameborder="0" scrolling="no"></iframe>
	</div><!--container	end-->
</body>
