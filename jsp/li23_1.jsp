<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import = "java.sql.*" %>
<html>
<body>
<p>li23_1.jsp</p><br>
<a href="one.jsp">返回</a><br>
<br>
<h1>第一种方式Statement拼接字符串会有严重的SQL注入的危险
<%!
long stu_t;
long cscore;
%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e){};
try{
String User="root";
String User_passwd="123456";
String URL="jdbc:mysql://localhost:3306/one";
try(Connection con = DriverManager.getConnection(URL,User,User_passwd)){
    try(Statement stmt = con.createStatement()){
        try(ResultSet rs = stmt.executeQuery("select student_t,cscore from one.sc where student_t=202001")){
            while(rs.next())
            {
                stu_t=rs.getLong(1);
                cscore=rs.getLong(2);
            }
        }
    }
}}catch(Exception e){System.out.print(e.toString());}
%>
<p>从数据库拿到的数据 <br>stu_t:<%=stu_t%><br>cscore:<%=cscore%></p>
<%-- 
     java.sql.SQLException: Unable to load authentication plugin 'caching_sha2_password'.这个报错。
      原因是MySQL 8 更新了用户验证方式
      主要原因8.x版本的验证模块和之前版本不同：
5.x版本是：default_authentication_plugin=mysql_native_password

8.x版本就是：default_authentication_plugin=caching_sha2_password

网上的主要解决方案是：

1 修改mysql的配置文件为旧的模块

2 运行命令将某个用户的验证模块改为旧版的模块
但 更好是去更新下驱动。。。但我懒得下载 自己学习用不着
mysql中运行 ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY '用户密码';

 --%>
<br>
<h1>第二种方式PreparedStatement用？号作为占位符</h1>
<p>SQL注入
<p>使用Statement拼字符串非常容易引发SQL注入的问题，这是因为SQL参数往往是从方法参数传入的。
<p>
<p>我们来看一个例子：假设用户登录的验证方法如下：
<p>
<p>User login(String name, String pass) {
<p>    ...
<p>    stmt.executeQuery("SELECT * FROM user WHERE login='" + name + "' AND pass='" + pass + "'");
<p>    ...
<p>}
<p>其中，参数name和pass通常都是Web页面输入后由程序接收到的。
<p>
<p>如果用户的输入是程序期待的值，就可以拼出正确的SQL。例如：name = "bob"，pass = "1234"：
<p>
<p>SELECT * FROM user WHERE login='bob' AND pass='1234'
<p>但是，如果用户的输入是一个精心构造的字符串，就可以拼出意想不到的SQL，这个SQL也是正确的，但它查询的条件不是程序设计的意图。
<p>例如：name = "bob' OR pass=", pass = " OR pass='"：
<p>
<p>SELECT * FROM user WHERE login='bob' OR pass=' AND pass=' OR pass=''
<p>这个SQL语句执行的时候，根本不用判断口令是否正确，这样一来，登录就形同虚设。
<p>
<p>要避免SQL注入攻击，一个办法是针对所有字符串参数进行转义，但是转义很麻烦，而且需要在任何使用SQL的地方增加转义代码。
<p>
<p>还有一个办法就是使用PreparedStatement。使用PreparedStatement可以完全避免SQL注入的问题，
<p>因为PreparedStatement始终使用?作为占位符，并且把数据连同SQL本身传给数据库，这样可以保证每次传给数据库的SQL语句是相同的，
<p>只是占位符的数据不同，还能高效利用数据库本身对查询的缓存。上述登录SQL如果用PreparedStatement可以改写如下：
<p>
<p>User login(String name, String pass) {
<p>    ...
<p>    String sql = "SELECT * FROM user WHERE login=? AND pass=?";
<p>    PreparedStatement ps = conn.prepareStatement(sql);
<p>    ps.setObject(1, name);
<p>    ps.setObject(2, pass);
<p>    ...
<p>}
<p>所以，PreparedStatement比Statement更安全，而且更快。
</body>
</html>