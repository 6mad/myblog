<%@ page contentType="text/html;charset=UTF-8" %>
<head>
<jsp:include page="/jsp/txt/head.jsp" />
</head>
<html>
<body bgcolor=yellow>
<form action="" method= get name= form>
<p>请输入1 到 1000 的整数：<input type="text" name="number"><br>
<input type="submit" value="发出" name="submit">
<a href="/jsp/one.jsp#li10">完成返回</a>
</form>
<% String num =request.getParameter("number");
if(num==null)
num="0";
try{int n= Integer.parseInt(num);
if(n>=1&&n<=500){
    %> <jsp:forward page="li10_2.jsp">
            <jsp:param name="number" value="<%=n%>"/>
        </jsp:forward>
        <%
}
else if(n>500&&n<=1000){
    %> <jsp:forward page="li10_3.jsp">
            <jsp:param name="number" value="<%=n%>"/>
        </jsp:forward>
        <%
} else if(n>1000){
    %> <jsp:forward page="error.jsp">
            <jsp:param name="mess" value="<%=n%>"/>
        </jsp:forward>
<%}
} catch(Exception e){
    %> <jsp:forward page="error.jsp">
            <jsp:param name="mess" value="<%=e.toString() %>"/>
        </jsp:forward>
        <%
}%>
</body>
</html>
