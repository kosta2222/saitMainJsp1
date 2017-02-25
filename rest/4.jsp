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
String dir="4Img";
String dirToAjax="\'4Img\'";
%>
<%
Date d=new Date();
Locale l=new Locale("russian");
SimpleDateFormat sdf=new SimpleDateFormat("d M y",l);//SimpleDateFormat парсинг даты
out.println("<p class=date>Сегодня "+sdf.format(d)+"</p>");
///Alg Table
final int  nRows=4;
final int  nCol=3;

int k = 0;
out.println("<div class=tab><table border=5 >");

        while (k < nRows*nCol) {
	
            for (int j = 0; j < nRows; j++) {
out.println("<tr>");
              
                for (int i = 0; i < nCol; i++) {
		String s="<td>"+"<img src=./"+dir+"/"+k+".JPG width=70% /><br>"+
		"<a href=# onclick=foo("+k+","+dirToAjax+")>"+"увеличить</a>"+"</td>";
		

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
<div class=sidebar>
<div class="result"><img src=./4Img/0.JPG width=70% /></div>
<ul>
<a href=index.jsp>Главная</a>
<li><a href=1.jsp>1</a> </li>
<li><a href=2.jsp>2</a></li>
<li><a href=3.jsp>3</a> </li>
<li><a href=4.jsp>4</a></div></li></ul>
<div class=bottom><p class=foot align=center>Мухамеджанов Константин Котибович</p></div>
</div>

<script src="./jquery/jquery-3.0.0.min.js"></script>
<!--<script src="./js/ajax.js"></script> !-->
<script>
function foo(i,d){
$.ajax({
url: 'response.jsp',
data: 'photo='+i+'&dir='+d,
type: 'get',
success:function(data){ //veshaem svoi obrabotchik
$('.result').html(data);
}
});
}

</script>
</body>
</html>

