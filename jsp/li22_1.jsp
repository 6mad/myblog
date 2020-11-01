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
<form action="li22_3.jsp" method="post" >
<select name="filepath" size=3>
<option selected value="F:/Download/c语言价格150.docx">c语言价格150.docx
<option selected value="F:/喃喃细语/追风筝的人.txt">追风筝的人.txt
<option selected value="F:/迅雷下载/myblog/jsp/li22_2.jsp">3.jsp
<option selected value="F:/迅雷下载/myblog/jsp/li22_3.jsp">4.jsp
</select>
<br><input type=submit value="提交你的选择">
</form>

</body>
</html>