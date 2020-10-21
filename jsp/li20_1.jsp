<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<html>
<body>
<p>log记录<br>
<a href="one.jsp">返回</a>
<%
byte a[] = new byte[100];
int i;
File log = new File("/home","log.txt");
try{
InputStream readfile = new FileInputStream(log);
while((i=readfile.read(a))!=-1)
{ 
    String temp= new String(a,0,i,"utf-8");
out.println(temp);
out.println("<br>");}
} catch(IOException e){
    out.print(e.toString());
}

%>
</body>
</html>