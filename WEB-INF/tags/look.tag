<%@ tag pageEncoding="UTF-8" %>
<P>tag标记体实例
<br>

<% int size=1;
for(size=1;size<=6;size++)
{ %>
<font size=<%=size %>>
<jsp:doBody/>
</font>
<%
}%>