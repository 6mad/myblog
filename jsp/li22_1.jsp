<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<html>
<body>
<p>上传文件<br>
<a href="one.jsp">返回</a><br>
<form action="li22_2.jsp" method="post" enctype="multipart/form-data">
<input type=file name="fil" size="45"><br>
<input type=submit name="submit" value="提交">
</form>


</body>
</html>