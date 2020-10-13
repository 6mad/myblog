<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>

<h1><%="这里是错误页面" %>
<h2><% String s= request.getParameter("mess");
out.print(s+"<br>");
out.print(response.getStatus());
%>