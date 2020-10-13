<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<body>
<font size=5>
<br>用户使用的协议：
<% 
String protocol = request.getProtocol();
out.println(protocol);
%>

<br>获取接收用户提交信息的页面：
<% 
String path = request.getServletPath();
out.println(path);
%>

<br>接受用户提交信息的长度：
<% 
int length = request.getContentLength();
out.println(length);
%>

<br>用户提交信息的方式：
<% 
String method = request.getMethod();
out.println(method);
%>

<br>获取HTTP头文件中User-Agent的值：
<% 
String header1 = request.getHeader("User-Agent");
out.println(header1);
%>

<br>获取HTTP头文件中accept的值：
<% 
String header2 = request.getHeader("accept");
out.println(header2);
%>

<br>获取HTTP头文件中Host的值：
<% 
String header3 = request.getHeader("Host");
out.println(header3);
%>

<br>获取HTTP头文件中accept-encoding的值：
<% 
String header4 = request.getHeader("accept-encoding");
out.println(header4);
%>

<br>获取用户IP地址：
<% 
String header5 = request.getRemoteAddr();
out.println(header5);
%>

<br>获取用户机名称：
<% 
String header6 = request.getRemoteHost();
out.println(header6);
%>

<br>获取服务器名称：
<% 
String header7 = request.getServerName();
out.println(header7);
%>

<br>获取服务器端口号：
<% 
int header8 = request.getServerPort();
out.println(header8);
%>

<br>获取用户提交所有参数的名字：
<% 
Enumeration en = request.getParameterNames();
while(en.hasMoreElements()){
String header9 = (String)en.nextElement();
out.println(header9);
}
%>

<br>文本框提交的信息：
<% 
request.setCharacterEncoding("UTF-8");
String header10 = request.getParameter("mess");
out.println(header10);
%>
</font>
</body>
</html>