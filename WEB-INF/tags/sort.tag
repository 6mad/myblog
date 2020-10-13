<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="listName" required="true" type="java.util.LinkedList"%>
<%@ attribute name="listSore" required="true" type="java.util.LinkedList"%>
<%@ attribute name="title" required="true" %>
<%@ attribute name="item" required="true" %>

<%
for(int i=0;i<listName.size();i++)
for(int j=i+1;j<listName.size();j++)
{
    double a = (Double)listSore.get(i);
    double b = (Double)listSore.get(j);
    
    if(b<a){
        String temp=(String)listName.get(i);
        double r = (Double)listSore.get(i);
        listName.set(i,(String)listName.get(j));
        listSore.set(i,(Double)listSore.get(j));
        listName.set(j,temp);
        listSore.set(j,r);
    }
}
out.print("<table border=1");
out.print("<tr>");
    out.print("<th>"+title+"</th>");
    out.print("<th>"+item+"</th>");
    out.print("<tr>");
    for(int k=0;k<listName.size();k++){
    out.print("<tr>");
    double sore =(Double)listSore.get(k);
    String name =(String)listName.get(k);
    if(sore<60){
        out.print("<th bgcolor=red>"+name+"</th>");
        out.print("<th bgcolor=red>"+sore+"</th>");
    }else{
        out.print("<th>"+name+"</th>");
        out.print("<th>"+sore+"</th>");
    }
    out.print("<tr>");
    }
    out.print("</table>");
%>
