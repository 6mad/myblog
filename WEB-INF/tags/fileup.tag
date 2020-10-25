<%@ tag pageEncoding="UTF-8" import="java.io.*" %>
<%@ attribute name="subdir" required="true" type="String"%>
<%@ variable name-given="message" scope="AT_END" %>
<%@ variable name-given="fileName" scope="AT_END" %>
<% jspContext.setAttribute("message","");
String fileName=null;
try{
    String tempfileName=(String)session.getId();
    File file=new File("");//该文件被默认放在tomcat服务器/bin目录中
    String parentDir=file.getAbsolutePath();
    parentDir =parentDir.substring(0,parentDir.lastIndexOf("bin")-1);
    String saveDir=parentDir+"/webapps/"+subdir;
    File dir = new File(saveDir);
    dir.mkdir();
    //建立临时文件f1
    File f1= new File(saveDir,tempfileName);
    FileOutputStream o =new FileOutputStream(f1);
    //将用户上传的信息全部写入f1临时文件
    InputStream in = request.getInputStream();
    byte b[]=new byte[10000];
    int n;
    while((n=in.read(b))!=-1){
        o.write(b,0,n);
    }
    o.close();
    in.close();
   //从临时文件中获取上传文件的文件名和文件内容
   RandomAccessFile randomRead = new RandomAccessFile(f1,"r");
   int second =1;
   String secondline=null;
   while(second<=2)
   {
       secondline=randomRead.readLine();
       second++;
   } 
   //获取”filename“之后等号出现的位置 也可以使用sliep用等号划分去最后一个字符串
    int pos = secondline.lastIndexOf("=");
    fileName=secondline.substring(pos+2,secondline.length()-1);
    randomRead.seek(0);//定位回到文件头
    //同理拿到第四行\n之后的文件内容
    long forthend=0;
    int forth=1;
    while((n=randomRead.readByte())!=-1&&(forth<=4)){
        if(n=='\n'){
            forthend=randomRead.getFilePointer();
            forth++;
        }
    }
    //终于开始存入磁盘
    byte cc[]=fileName.getBytes("UTF-8");
    fileName = new String(cc);
    File f2 = new File(dir,fileName);
    RandomAccessFile randomWrite = new RandomAccessFile(f2,"rw");
    //确定内容最后的位置 倒数第6行
    randomRead.seek(randomRead.length());
    long endpos = randomRead.getFilePointer();
    long mark = endpos;
    int j=1;
    while((mark>=0)&&(j<=6)){
    mark--;
    randomRead.seek(mark);
    n=randomRead.readByte();
    if(n=='\n'){
        endpos=randomRead.getFilePointer();
        j++;
    }
    }
randomRead.seek(forthend);
long startpoint=randomRead.getFilePointer();
while(startpoint<endpos-1){
    n=randomRead.readByte();
    randomWrite.write(n);
    startpoint=randomRead.getFilePointer();
}
randomRead.close();
randomWrite.close();
jspContext.setAttribute("message","上传成功！！");
jspContext.setAttribute("fileName","/userupfile/image/"+fileName);
f1.delete();
}catch(Exception ee){
    out.print(ee+"file路径:"+parentDir);
    jspContext.setAttribute("message","没有选择文件或者文件上传失败");
}
%>