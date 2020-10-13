<%@ page contentType="text/html;charset=UTF-8" %>
<head>
<jsp:include page="/jsp/txt/head.jsp" />
</head>
<html>
<body bgcolor=yellow>
<P><form size=2 color=blue >这里是第二个jsp页面</form>
<form size=3>
<% String s= request.getParameter("number");
out.println("<br>发送过来的值为："+s); %>
<br><img src="/imgs/trp_1.jpg" width="<%=s%>"></img>
</form>
</body>
</html>