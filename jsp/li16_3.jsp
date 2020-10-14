<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<body bgcolor=yellow>
<P>我叫下一个页面</p>
<%
String str =response.encodeURL("li16_1.jsp");
String id = session.getId();
out.println("你的session对象的id是：<br>"+id);
%>
<br>点击前往下一个页面
<br><a href="<%=str %>">欢迎！</a>
</body>
</html>