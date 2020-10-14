<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<body bgcolor=yellow>
<P>我是瑞克页面</p>
<%
String str =response.encodeURL("li16_2.jsp");
String id =session.getId();
out.println("<br>你的对象的ID是：<br>"+id);
%>

<form size=3 action="<%=str %>" method =post name= from>
<input type="text" name ="boy">
<input type="submit" value="送出" name ="submit">
<br><a href="one.jsp">完成任务返回</a>
</form>
</body>
</html>