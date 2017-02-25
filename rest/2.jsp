<html>
<head>
<meta charset=utf-8 />
<title>Using Jsp</title>
<link rel="stylesheet" type="text/css" href="./css/main.css" />
</head>
<body>
<div class=wrap>
<div class=header>
<p class="zag" align="center">Our beautiful country </p>
</div>
<div class=content>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Locale" %>
<%!
String dir="indexImg";
%>
<%
/*Date d=new Date();
Locale l=new Locale("russian");
SimpleDateFormat sdf=new SimpleDateFormat("d M y",l);//SimpleDateFormat парсинг даты
out.println("<p class=date>Сегодня "+sdf.format(d)+"</p>");*/
final int  nRows=4;
final int  nCol=3;

int k = 0;
out.println("<div class=tab><table border=5 >");

        while (k < nRows*nCol) {
	
            for (int j = 0; j < nRows; j++) {
out.println("<tr>");
              
                for (int i = 0; i < nCol; i++) {
		String s="<td>"+"<img src=./"+dir+"/"+k+".JPG width=70% /><br>"+
		"<a href=./"+dir+"/"+k+".JPG>"+"увеличить</a>"+"</td>";

                    out.print(s);
                    k++;

                }
out.print("</tr>");

            }



        }
out.println("</table></div>");
//// End Alg Table
%>
</div>
<div class=sidebar><ul>
<a href=index.jsp>Главная</a>
<li><a href=1.jsp>1</a> </li>
<li><a href=2.jsp>2</a></li>
<li><a href=3.jsp>3</a> </li>
<li><a href=4.jsp>4</a></div></li></ul>
<div class=bottom><p class=foot align=center>Мухамеджанов Константин Котибович</p></div>
</div>
</body>
</html>

