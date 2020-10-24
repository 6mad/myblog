<%@ page contentType="text/html;charset=UTF-8" errorPage="" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>one one go!!</title>
</head>
<body>

  <%! 
  
  String getDateTimeDay(){
    Date d=new Date();
    SimpleDateFormat TimeFmt = new SimpleDateFormat("yy年MM月dd日");
    SimpleDateFormat DateFmt = new SimpleDateFormat("HH时mm分ss秒");
    return TimeFmt.format(d)+","+DateFmt.format(d);
  }%>

<center><% out.println(getDateTimeDay());
//response.setHeader("refresh","1");
 %></center>
<h1><a id="top" href="/home.html#top"> 呃呃呃 one one go!!</a></h1>
<h2>
  <!-- 导航列表 -->
<ul>
  <li><a href="#li1">例1 乘法表</a> </li>
  <li><a href="#li2">例2</a> </li>
  <li><a href="#li3">例3</a> </li>
  <li><a href="#li4">例4 菜鸟教程 JSP 测试实例 1</a> </li>
  <li><a href="#li5">例5 菜鸟教程 JSP 测试实例 2</a> </li>
  <li><a href="#li6">例6</a> </li>
  <li><a href="#li7">例7</a> </li>
  <li><a href="#li8">例8 tag</a> </li>
  <li><a href="#li9">例9</a> </li>
  <li><a href="#li10">例10</a> </li>
  <li><a href="#li11">例11 特朗普数据传输实例</a> </li>
  <li><a href="#li12">例12 获取用户提交信息任务</a> </li>
  <li><a href="#li13">例13 获取页面连接信息</a> </li>
  <li><a href="#li14">例14 response重定向</a> </li>
  <li><a href="#li15">例15 response 状态行</a> </li>
  <li><a href="#li16">例16 session对象</a> </li>
  <li><a href="#li17">例17 计数器</a> </li>
  <li><a href="#li18">例18 application制作留言板</a> </li>
  <li><a href="#li19">例19 file操作 列出指定类型文件</a> </li>
  <li><a href="#li20">例20</a> </li>
  <li><a href="#li21">例21</a> </li>
  <li><a href="#li22">例22</a> </li>
  <li><a href="#li23">例23</a> </li>
</ul>
</h2>
<div id="ee">
<h1><a href="#top">上</a></h1>
</div>
<style>
a:link {text-decoration:none;}    /* unvisited link */
a:visited {text-decoration:none;} /* visited link */
a:hover {text-decoration:none;}   /* mouse over link */
a:active {text-decoration:none;}  /* selected link */
  #ee{
    text-align: center;
    line-height: 10px;
    position: fixed;
    right: 3%;
    bottom: 20%;
    width: 60px;
    height: 60px;
    background-color: rgb(63, 89, 161);
    border-radius:50px;
  }
</style>
<h3 id="li1">例1</h3>
<% out.println("a ha");
    out.println("乘法表");
    %>
    <h2></h2>
    <%
    for(int i=1; i<10; i++){
    for(int j=i; j<10; j++)
    {
        out.print(i+" * "+j+" = "+i*j+"||||");
    }%>
    <h2></h2>
    <%
    }
    %>
<h2>?? luan ma</h2>
<h3 id="li2">例2</h3>
<h1>现在时间：<% out.println((new java.util.Date()).toLocaleString()) ; %></h1>
<h3 id="li3">例3</h3>
<p>尝试等号 <%= (new java.util.Date()).toLocaleString() %></p>
<p>尝试等号 <%= 112 %></p>
<%-- jsp注释，注释的内容不会被发送至浏览器，甚至不会被编译 --%>
<% //java注释， %>
<!-- HTML注释，可以在浏览器控制台查看源代码看到-->

<h3 id="li4">例4</h3>
<%! 
  private int initVar=0;
  private int serviceVar=0;
  private int destroyVar=0;
%>
  
<%!
  public void jspInit(){
    initVar++;
    System.out.println("jspInit(): JSP被初始化了"+initVar+"次");
  }
  public void jspDestroy(){
    destroyVar++;
    System.out.println("jspDestroy(): JSP被销毁了"+destroyVar+"次");
  }
%>

<%
  serviceVar++;
  System.out.println("_jspService(): JSP共响应了"+serviceVar+"次请求");

  String content1="初始化次数 : "+initVar;
  String content2="响应客户请求次数 : "+serviceVar;
  String content3="销毁次数 : "+destroyVar;
%>
<h1>菜鸟教程 JSP 测试实例 1</h1>
<!--销毁是什么意思 还有这些数据是怎么保留的？  -->
<p><%=content1 %></p>
<p><%=content2 %></p>
<p><%=content3 %></p>

<h3 id="li5">例5</h3>
<h1>菜鸟教程 JSP 测试实例 2</h1>
<p>失败暂未找到原因</p>

<h3 id="li6">例6</h3>
<h1>p12</h1>

<%! Date date;
    int sum;
    public int getFactorSum(int n){
      for(int i=1;i<n;i++){
        if(n%i==0)
        sum=sum+i;
      }
      return sum;
    } %>
<font Size=4>
<p>程序片创建Date对象:</p>
<% date= new Date();
out.println("<br>"+date+"<br>");
int m=100;%>
<%=m%>
的因子之和是（不包括<%=m%>）
<%= getFactorSum(m) %>
</font>

<h3 id="li7">例7</h3>
<h1>p40</h1>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sum" %>
<sum:AddSum/>

<h3 id="li8">例8</h3>
<h1>p43</h1>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sum" %>
<sum:look>王小二王小二</sum:look>
<sum:look>李小三李小三李小三</sum:look>
<sum:look>你妈喊你们回家恰饭</sum:look>

<h3 id="li9">例9</h3>
<h1>p43</h1>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sum" %>
<%! String s="社么鬼玩意儿？？";%><br>
<p>发出的数据为：<%=s%>
<sum:attr str="<%=s%>"/>

<h3 id ="li10">例10</h3>
<h1>p47</h1>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sum" %>
<% LinkedList listName = new LinkedList();
LinkedList listSore = new LinkedList();
listName.add("张三");
listSore.add(new Double(87));
listName.add("张e");
listSore.add(new Double(77));
listName.add("张r");
listSore.add(new Double(24));
listName.add("张t");
listSore.add(new Double(37));
listName.add("张y");
listSore.add(new Double(47));
listName.add("张u");
listSore.add(new Double(57));
listName.add("张i");
listSore.add(new Double(67));
%>
<p>成绩单：

<sum:sort title="姓名" item="高数成绩"
  listName="<%=listName%>" listSore="<%=listSore%>"/>

<h3 id="li11">例11</h3>
<h1>p43</h1>
<a href="/jsp/li10_1.jsp">去完成</a>
<!-- <button onclick='<%! String str ="已完成";%>'>点我</button> -->
<div><%=str%></div>

<h3 id="li12">例12</h3>
<h1>p62</h1>
<h1>获取用户提交信息任务</h1>
<a href="/jsp/li12_1.jsp">去完成</a>

<h3 id="li13">例13</h3>
<h1>p66</h1>
<h1>获取页面连接信息</h1>
<form action="/jsp/li13_1.jsp" method=post name=mess>
<input type="text" name="mess">
<input type="submit" value="发出" name="submit">
</form>

<h3 id="li14">例14</h3>
<h1>p81</h1>
<h1>response重定向</h1>
<p>填写姓名（非空）：<br>
<form action="/jsp/li14_1.jsp" method=post name=form>
<input type="text" name="boy">
<input type="submit" value="Enter">
</form>

<h3 id="li15">例15</h3>
<h1>p83</h1>
<h1>response 状态行</h1>
<p>填写404或关闭<br>
<form action="" method=get name=li15>
<input type="text" name="li15">
<input type="submit" value="Enter">
</form>
<%
String str=null;
request.setCharacterEncoding("UTF-8");
str = request.getParameter("li15");
if(str==""||str==null) out.print("null");
else if(str.equals("关闭")||str.equals("404")) {
response.setStatus(404);
out.print("<br>页面状态码为："+response.getStatus());
}
else {out.print("<br>"+str);
out.print("<br>页面状态码为："+response.getStatus());
}
out.print("<br><br>");
%>
<font size=5>以上表明状态码只表明状态并不决定状态</font>
<br><br>
<font size=7>!!!!这是具有象征意义的一句话 我步入了git时代</font>>

<%-- 以上是自己gist的小尝试 --%>

<h3 id="li16">例16</h3>
<h1>p87</h1>
<h1>session对象</h1>
<a href="li16_1.jsp">去完成</a>

<h3 id="li17">例17</h3>
<h1>p95</h1>
<h1>计数器 回忆java IO流操作</h1>
<a href="li17_1.jsp">去完成</a>


<h3 id="li18">例18</h3>
<h1>p99</h1>
<h1>application制作留言板</h1>
<br><hr0>
<form action="" method="get">
输入你的名字：<input type="text" name="name"><br>
留言标题：<input type="text" name="title"><br>
输入留言内容：<br>
<textarea name="messages" rows="10" cols="36" wrap="physical"></textarea><br>
<input type="submit" value="提交" onclick=fush(){$('form').reset()}>

</form>

<%! Vector<String> v = new Vector<String>();
int i = 0;
ServletContext application;
synchronized void sendMessage(String s){
  application = getServletContext();
  v.add(s);
  application.setAttribute("Mess",v);
}
%>

<%
request.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");

String title =request.getParameter("title");

String messages =request.getParameter("messages");
if(name==null&&title==null&&messages==null);
else if(name!=""&&title!=""&&messages!=""){
String time=getDateTimeDay();
String s= name+"#"+title+"#"+time+"#"+messages;
sendMessage(s);
out.println("<p>你的信息已提交成功√√√<br>");
} 
else{
  out.println("<p>信息错误，请填写完整！<br>");
}
%>
<a href="li18_1.jsp">查看留言板</a>
<br><br><br>

<h3 id="li19">例19</h3>
<h1>p111</h1>
<h1>file操作 列出指定类型文件</h1>
<form action="" method="post">
输入目录：<input type="text" name="dir"><br>
输入列出文件类型：<input type="text" name="_end"><br>
<input type="submit" value="查找">
</form>
<%!
String text;
String file_name[];
class fileName implements FilenameFilter{
  String str=null;
  fileName(String s){
    str="."+s;
  }
  public boolean accept(File dir,String name){
    return name.endsWith(str);
  }
}
%><%
request.setCharacterEncoding("UTF-8");
String dir=request.getParameter("dir");
String _end =request.getParameter("_end");
if(dir!=null&&_end!=null){
  File dirFile =new File(dir);
  if(dirFile.isDirectory()){   
    if(_end!=""){
fileName filename = new fileName(_end);
         file_name = dirFile.list(filename);
} else {
         file_name = dirFile.list();
  }
    for(String fname : file_name)
    out.println("<br>"+fname);
  }
else {
  out.println("<br>错误！请输入目录！！");
}
}

%>

<h3 id="li20">例20</h3>
<h1>p111</h1>
<h1>file操作 保存例19的输出文件到log.txt</h1>
<button name="save" >保存</button>
<a href="li20_1.jsp">查看保存的文件</a>
<%
if(file_name!=null){
File log = new File("/home","log.txt");
if(!log.exists()) log.createNewFile();
try{
OutputStream outfile = new FileOutputStream(log,true);
outfile.write(getDateTimeDay().getBytes("UTF-8"));
outfile.write("\n".getBytes("UTF-8"));
for(String fname : file_name){
  outfile.write(fname.getBytes("UTF-8"));
  outfile.write("\n".getBytes("UTF-8"));
}   
outfile.close();
} catch(IOException e) {
  out.print(e);
}}
   %>
   <br>
   <h1>呃呃 能播放么</h1>
<iframe src="https://z1.m1907.cn/?jx=https://www.bilibili.com/bangumi/play/ss28747/" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true" style="height:465px;width:900px" >
</iframe>

</body>

</html>
