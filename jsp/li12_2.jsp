<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
获取文本框提交的信息：
<% 
request.setCharacterEncoding("UTF-8");
String textContent = request.getParameter("boy"); %>
<%= textContent%><br>

获取按钮的名字：
<% 

String buttonContent = request.getParameter("submit"); %>
<%= buttonContent%><br>

获取密码：
<% 

String passwordContent = request.getParameter("mi"); %>
<%= passwordContent%>
</body>
</html>
