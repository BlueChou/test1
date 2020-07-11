<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看购物车商品</title>
</head>
<body>
	<h3>这里是结账柜台，请您确认以下信息</h3>
	<br />
	<%
	
	String id=(String) session.getAttribute("id");
	out.println("您的身份卡号：" + id);
	Enumeration enumsec= session.getAttributeNames();
 	out.println("<br>购物车中的商品清单：<br>");
 	while (enumsec.hasMoreElements()) {
 		String ser=(String)enumsec.nextElement();
 		String scr=(String)session.getAttribute(ser);
 		if (!(scr.equals(id))) {
 			out.println("  " + scr + "<br>");
 			session.removeAttribute(ser);
 		}
 	}
 	%>
    <h3>结算</h3>
		<a href="loginID.jsp"> 欢迎修改会员卡号！</a>
		<a href="food.jsp"> 欢迎来到柜台！</a>
</body>
</html>