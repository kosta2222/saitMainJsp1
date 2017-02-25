<html>
<head>
<meta charset=utf-8 />
<title>Db</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="com.kosta.mysql.ManagmentSystem" %>
<%@ page import="java.util.logging.*" %>

<%@ page isErrorPage="true" %>

<%! Connection con=null; %>
<%! Statement stat=null;%>
<%! ResultSet res=null;%>
<%! ManagmentSystem ms=null; %>
<%! Logger logger=null; %>
<% response.setContentType("text/html;charset=UTF-8");  %>
<%!
public void jspInit(){
try{
logger=Logger.getLogger(responseDescr_jsp.class.getName());
logger.info("info from jsp");
final String usDir=System.getProperty("user.dir")+"//saitConfig.dat";
ms=ManagmentSystem.getInstance(usDir);
con=ms.getConn();
}catch(Exception e){
//System.out.println(e.toString());
logger.logp(Level.SEVERE,"responseDescr_jsp","jspInit()","Proizoshla oshibka s ManagmentSystem",e );

}
}
%>
<%
String s1=request.getParameter("photo");
String s2=request.getParameter("dir");
try{
stat=con.createStatement();
String s01="set names utf8";
stat.executeQuery(s01);
stat.close();

stat=con.createStatement();
String s="select description from descript where dir=\'"+s2+"\' and number_of_foto="+s1+" ";
res=stat.executeQuery(s);

}catch(Exception e){
logger.logp(Level.SEVERE,"responseDescr_jsp","scriplet","Proizoshla oshibka pri prieme parametrov",e );
}
%>
<table border=5>

<% while(res.next()){ %>

<tr>
<td><%= res.getString(1) %> </td>
</tr>
<% } %>


</table>
</body>
</html>

 
