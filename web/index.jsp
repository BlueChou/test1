<%@page import= " java.util.*,java.io. *" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset= "UTF-8">
    <title>Document</title>
</ head>
<body>
<h1>梦想购物城</h1>
    <%
String name=(String)session.getAttribute( "username");
if(name==null){
out. println("尊敬的顾客您还没有登录，请您点击<a href='loginID.jsp'>登录</a>");
}else{%>

<p>欢迎<%=name%>
    <%}%>
</ body>
</html>
