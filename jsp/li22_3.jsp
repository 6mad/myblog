<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="Fileload" %>
<html>
<body>
<p>li22_3.jsp</p><br>
<a href="one.jsp">返回</a><br>
<%
request.setCharacterEncoding("UTF-8");
String loadpath=request.getParameter("filepath");

%>
<Fileload:fileload subdir="<%=loadpath%>" />
<%=message%>

</body>
</html>