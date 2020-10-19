<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*"%>
<html>
<body bgcolor=yellow>
<p>留言板
<% Vector<String> v=(Vector)application.getAttribute("Mess");
out.print("<table border=2>");
out.print("<tr>");
out.print("<td bgcolor=cyan>"+"留言者姓名"+"</td>");
out.print("<td bgcolor=cyan>"+"留言标题"+"</td>");
out.print("<td bgcolor=cyan>"+"留言时间"+"</td>");
out.print("<td bgcolor=cyan>"+"留言"+"</td>");
try{
for(int i=0;i<v.size();i++){
    out.print("<tr>");
    String message=v.elementAt(i);
    String a[]=message.split("#");
    out.print("<tr>");
    int number =a.length-1;
    for(int k=0;k<=number;k++){
        if(k<number)
        out.print("<td bgcolor=cyan>"+a[k]+"</td>");
        else
        out.print("<td><TextArea rows=5 cols=30>"+a[k]+"</TextArea></td>");
    } out.print("</tr>");
}
} catch(Exception e){}

 out.print("</table>");
 %>
<br><a href="one.jsp#li18">返回</a>
<%-- <a href="li18_2.jsp">清空留言板</a> --%>
</body>
</html>