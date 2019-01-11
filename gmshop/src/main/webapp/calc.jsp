﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>简易计算器</title>
<style type="text/css">
  body{background-color:#99CCFF;}
  table{border-left:1 #FFFFFF solid;border-top:1 #FFFFFF solid;}
  .inputBox{border-right: #FFFFFF 1px solid; border-top: #000000 1px solid; border-left: #000000 1px solid;border-bottom: #FFFFFF 1px solid;width:180px;BACKGROUND-COLOR:#FFFFFF;text-align:right;}
  input{border-right: #000000 1px solid; border-top: #ffffff 1px solid; border-left: #ffffff 1px solid; COLOR: #000080; border-bottom: #000000 1px solid; BACKGROUND-COLOR: #d8d8d0;width:40px;height:20px;}
  td{border-bottom:#FFFFFF 1 solid;border-right:#FFFFFF 1 solid;height:25px;}
</style>
<script type="text/JavaScript">
  var total   = 0;      //全局变量total,累计输入
  var flagNew = false;  //是否是新的操作数（输入的第二个数）
  var Opp     = "";     //运算符变量

function clearAll(){
  total=0;
  document.getElementsByName("number")[0].value=0;//清除结果
}

function enterNumber(Num){    //数字按钮单击调用的函数，Num表示输入的数字
  if (flagNew) {             //判断输入的是否新的操作数
    document.getElementsByName("number")[0].value = Num; 
    flagNew = false; 
    } 
  else { 
    if (document.getElementsByName("number")[0].value== "0"){ 
      document.getElementsByName("number")[0].value= Num; 
      }
    else {
      document.getElementsByName("number")[0].value+= Num; //记录输入的操作 数
      }
    } 
}

function Operation (Op) {              //“加减乘除”按钮单击调用的函数，Op代表运算符号
  var firstNum=document.getElementsByName("number")[0].value; 
  if (flagNew && Opp != "=");{
  flagNew = true; 
   // 根据运算符进行运算
  if ( '+' == Opp) {
    total +=parseFloat(firstNum); 
    }
  else if ( '-' == Opp) {
    total -=parseFloat(firstNum); 
    }
  else if ( '/' == Opp) {
    total /=parseFloat(firstNum); 
    }
  else if ( '*' == Opp) {
    total *=parseFloat(firstNum); 
    }
  else {
  	total =parseFloat(firstNum); 
  	}
  document.getElementsByName("number")[0].value= total;   //结果文本框累计数字
  Opp = Op;
  } 
}
</script> 
</head>

<body>
   <form action="" method="post" id="myform">
<table width="180" border="0" cellspacing="0" cellpadding="3" align="center">
  <tbody>
   <tr>
    <td colspan="4"><input name="number" type="text" class="inputBox" value="0" /></td>
  </tr>
  <tr>
    <td><input name="number7" type="button" value="7" onClick="enterNumber(7)" /></td>
	<td><input name="number8" type="button" value="8" onClick="enterNumber(8)" /></td>
	<td><input name="number9" type="button" value="9" onClick="enterNumber(9)" /></td>
	<td><input name="number+" type="button" value="+" onClick="Operation('+')" /></td>
  </tr>
  <tr>
    <td><input name="number4" type="button" value="4" onClick="enterNumber(4)" /></td>
	<td><input name="number5" type="button" value="5" onClick="enterNumber(5)" /></td>
	<td><input name="number6" type="button" value="6" onClick="enterNumber(6)" /></td>
	<td><input name="number-" type="button" value="-" onClick="Operation('-')" /></td>
  </tr>
  <tr>
    <td><input name="number1" type="button" value="1" onClick="enterNumber(1)" /></td>
	<td><input name="number2" type="button" value="2" onClick="enterNumber(2)" /></td>
	<td><input name="number3" type="button" value="3" onClick="enterNumber(3)" /></td>
	<td><input name="number*" type="button" value="*" onClick="Operation('*')" /></td>
  </tr>
  <tr>
    <td><input name="number0" type="button" value="0" onClick="enterNumber(0)" /></td>
	<td><input name="numberC" type="button" value="C" onClick="clearAll();" /></td>
	<td><input name="number/" type="button" value="/" onClick="Operation('/')" /></td>
	<td><input name="number=" type="button" value="=" onClick="Operation('=')" /></td>
  </tr>
  </tbody>
</table>
</form>
</body>
</html>