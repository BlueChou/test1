<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>购物城页面</title>
</head>
<body>
	<form action="" method="post" name="form">
	这里是柜台，请您选择要购买的商品：<br/>
	<input type="checkbox" name="sec" value="青春" />青春
	<input type="checkbox" name="sec" value="时间" />时间
	<input type="checkbox" name="sec" value="友谊" />友谊
	<input type="checkbox" name="sec" value="快乐" />快乐<br/>
	<input type="submit" name="gouwu" value="购物">
	<br/>
	<br/>
	<a href="loginID.jsp">欢迎修改身份卡号！</a>
	<a href="count.jsp">欢迎查看购物车！</a>
	<%
	request.setCharacterEncoding("UTF-8");
	String sec[] = request.getParameterValues("sec");
	if (sec!=null && sec.length!= 0) {
	for (int i=0;i<sec.length;i++) {
		session.setAttribute(sec[i],sec[i]);
	}
	}	
			%>
</body>
</html>