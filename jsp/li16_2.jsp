<%@ page contentType="text/html;charset=UTF-8" %>
<%
request.setCharacterEncoding("UTF-8");
session.setAttribute(request.getParameter("submit"),request.getParameter("boy"));
%>
<%! //字符串处理
public String getString(String s){
if(s==null) s="";
return s;
}
%>

<html>
<body bgcolor=yellow>
<P>我是莫迪页面</p>
<%

String str =response.encodeURL("li16_3.jsp");
String id = session.getId();
out.println("你的session对象的id是：<br>"+id);
String ss= getString((String)session.getAttribute(request.getParameter("submit")));
out.println("<br>你的输入存在session的数据为：<br>"+ss);
%>
<br>点击前往下一个页面
<br><a href="<%=str %>">欢迎！</a>
</body>
</html>