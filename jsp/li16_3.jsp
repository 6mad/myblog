<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<html>
<body bgcolor=yellow>
<P>我叫下一个页面</p>
<%
String str =response.encodeURL("li16_1.jsp");
String id = session.getId();
out.println("你的session对象的id是：<br>"+id);

long createTime = session.getCreationTime();
Date date = new Date(createTime);
String strDateFormat="yyyy年MM月dd日 HH:mm:ss";
SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
out.println("<br>session创建时间："+ sdf.format(date));
%>
<br>点击前往下一个页面
<br><a href="<%=str %>">欢迎！</a>
</body>
</html>