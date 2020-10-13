<%@ tag pageEncoding="UTF-8" %>
<p>这是个tag文件负责计算1到100的奇数和:
<%
int i=1 ,sum=0;
for(i=1;i<100;i++){
if(i%2!=0) 
sum=sum+i;
}
out.println(sum);
%>