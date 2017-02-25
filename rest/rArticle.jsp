<%@ page import="java.sql.*" %>
<%@ page import="com.kosta.mysql.ManagmentSystem" %>
<%@ page import="java.util.logging.*" %>

<%@ page isErrorPage="true" %>

<%! Connection con=null; %>
<%! Statement stat=null;%>
<%! ResultSet res=null;%>
<%! ManagmentSystem ms=null; %>
<%! Logger logger=null; %>
<% response.setContentType("text/html;charset=cp1251");  %>
<%!
public void jspInit(){
try{
logger=Logger.getLogger(rArticle_jsp.class.getName());
logger.info("info from jsp");
final String usDir=System.getProperty("user.dir")+"//saitConfig.dat";
ms=ManagmentSystem.getInstance(usDir);
con=ms.getConn();
}catch(Exception e){
logger.logp(Level.SEVERE,"rArticle_jsp","jspInit()","Proizoshla oshibka s ManagmentSystem",e );

}
}
%>
<%
String s1=request.getParameter("header");
String s2=request.getParameter("type");
try{
stat=con.createStatement();
String s01="set names utf8";
stat.executeQuery(s01);
stat.close();

stat=con.createStatement();
String s="select time_of,text from article where header_of_article=\'"+s1+"\' and type_of_article=\'"+s2+"\'";
res=stat.executeQuery(s);

}catch(Exception e){
logger.logp(Level.SEVERE,"rArticle_jsp","scriplet","Proizoshla oshibka pri prieme parametrov ",e );
}
%>
<table border=5>

<% while(res.next()){ %>

<tr>
<%= res.getString(1) %> </td>
</tr>
<tr>
<%= res.getString(2) %> </td>
</tr>

<% } %>
