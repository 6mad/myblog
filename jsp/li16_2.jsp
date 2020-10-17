<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
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