<%@ tag pageEncoding="UTF-8" import="java.io.*" %>
<%@ attribute name="subdir" required="true" type="String"%>
<%@ variable name-given="message" scope="AT_END" %>
<% jspContext.setAttribute("message","");
String filename=subdir.substring(subdir.lastIndexOf("/")+1);

File f1= new File(subdir);
response.setHeader("Content-disposition","attachment;filename="+filename);
try{
    FileInputStream in = new FileInputStream(f1);

    OutputStream outfile=response.getOutputStream();

    byte [] b= new byte[500];
    int n=0;
    while((n=in.read(b))!=-1){
        outfile.write(b,0,n);
    }
    in.close();
    outfile.close();
    System.out.print("怎么不打印");
    System.out.print("怎么回事"+filename+"??啊");
    jspContext.setAttribute("message","成功下载");
}catch(Exception ee){
    out.print(ee+"??"+filename);
    jspContext.setAttribute("message","下载失败");
}

/////////////////////

//////////////
%>