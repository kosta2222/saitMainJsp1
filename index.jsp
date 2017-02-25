<html>
<head>
<meta charset=utf-8 />
<!--<meta pragma: no-cache /> !-->
<title>Our beatuiful country</title>
<link rel="stylesheet" type="text/css" href="./css/main.css" />
</head>
<body>
<div id=status style="position:absolute; left:500px;top:200px;font-size:20px;color:yellow;">
Подождите пожалуйста, идет загрузка...</div>
<script>
function end(){
var t=document.getElementById('status');
t.innerHTML='';
}
</script>

<div class=wrap>
<div class=header>
<img src="./rest/indexImg/head1.png" width=100% />
<img  ID="f" src=./rest/flower1.png style="position:absolute;left:500;top:200" />
<img  ID="b" src=./rest/but1.png style="position:absolute;left:450;top:450" />
<!--<p class="zag" align="center">Our beautiful country </p> !-->
</div>
<div class=content>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Locale" %>
<%!
String dir="indexImg";
String dirToAjax="\'indexImg\'";
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
		String s="<td>"+"<img src=./rest/"+dir+"/"+k+".JPG width=70% /><br>"+
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
<div class="result"><%= "<img src=./rest/"+dir+"/"+0+".JPG width=70% />" %></div>
<div class="description">Jdem otveta</div>
</div>
<div class=sidebar><ul>
<a href=index.jsp>Главная</a>
<li><a href=./rest/1.jsp>Выбор темы</a> </li>
<!--<li><a href=2.jsp>2</a></li>
<li><a href=3.jsp>3</a> </li>
<li><a href=4.jsp>4</a></li></ul> !-->
</div>
<img   src=./rest/kuza1.png id=k style="position:absolute;left:800;top:500" />
<div class=bottom><p class=foot align=center>© Мухамеджанов Константин Котибович</p></div>
</div>

<script src="./jquery/jquery-3.0.0.min.js"></script>

<script>
function foo(i,d){
$.ajax({
url: './rest/responseImg.jsp',
data: 'photo='+i+'&dir='+d,
type: 'get',
success:function(data){ //veshaem svoi obrabotchik
$('.result').html(data);
}
});
$.ajax({
url: './rest/responseDescr.jsp',
data: 'photo='+i+'&dir='+d,
type: 'get',
success:function(data){ //veshaem svoi obrabotchik
$('.description').html(data);
}
});

}
</script>
<script>
function foo1(){
var i=Math.floor(Math.random() * 3)+1;
switch(i){
case 1:$('body').css("background","#666600");break;
case 2:$('body').css("background","black");break;
case 3:$('body').css("background","#CC3333");break;
}

}


</script>
<script>setInterval(foo1,3000);</script>
<script>
var t=0; dt=0;
function f1(x) { return 100+ 60*Math.sin(x*Math.PI/180+(Math.PI/2));}
function moveFlow()
{
setInterval(function(){

f.style.left=(t+dt);
f.style.top=f1(t+dt);;
dt+=20;
if(dt==1000){
dt=0;

}

},500
);
}
</script>
<script>moveFlow();</script>
<script>
var t=0; dt=0;
function f1(x) { return 100+ 60*Math.sin(x*Math.PI/180);}
function moveBut()
{
setInterval(function(){

b.style.left=(t+dt);
b.style.top=f1(t+dt);;
dt+=20;
if(dt==1000){
dt=0;

}

},500
);
}
</script>
<script>moveBut();</script>
<script>
var t=0; dt=0;
function moveKuza()
{
setInterval(function(){

k.style.left=(t+dt);
k.style.top=650;
dt+=20;
if(dt==1000){
dt=0;

}

},500
);
}

</script>
<script>moveKuza();</script>
<script>end()
</script>
</body>
</html>
</script>

