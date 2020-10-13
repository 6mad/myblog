<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
<% 
String str =null;
request.setCharacterEncoding("UTF-8");
str = request.getParameter("boy");
if(str==null||str=="") response.sendRedirect("/jsp/one.jsp");
else {
    out.print("欢迎你来到本页面！");
    out.print(str+"先生");
}
 %>

</body>
</html>