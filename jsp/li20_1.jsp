<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<html>
<body>
<p>log记录<br>
<a href="one.jsp">返回</a>
<%
File log = new File("F:/code/log.txt");
try{
InputStream readfile = FileInputStream(log);

}
%>
</body>
</html>