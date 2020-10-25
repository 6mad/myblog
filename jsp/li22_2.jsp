<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="Fileup" %>
<html>
<body>
<p></p><br>
<a href="one.jsp">返回</a><br>
<Fileup:fileup subdir="userupfile/image"/>
<%=message%>
<br><image src="<%=fileName%>" width=260 ></image>

</body>
</html>