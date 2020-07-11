<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导购页面</title>
</head>
<body>
	<% 
	   request.setCharacterEncoding("UTF-8");
	   String id=request.getParameter("id");
	   if(id==null){
		   id="";
	   }
	   else{
			   session.setAttribute("id",id);
	   }
	   %>
	   <a href="food.jsp">这里是柜台，请选择您要购买的商品</a><br/>
	   <a href="loginID.jsp">欢迎修改身份卡号！</a>
</body>
</html>