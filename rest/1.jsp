<html>
<head>
<meta charset=utf-8 />
<!--<meta pragma: no-cache /> !-->
<title>Выбор темы по программированию</title>
<link rel="stylesheet" type="text/css" href="../css/main.css" />
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
<img src="./indexImg/head1.png" width=100% />
</div>
<div class=content>
<div class=resultArticle>Выберите тему из меню справа</div>
</div>
<div class=sidebar><ul>
<a href=../index.jsp>Главная</a>
<li>Выбор темы:</li>
<li><a href=# onclick=foo("hotkeys","programing")>Hotkeys IntellIj Idea</a> </li>
<li><a href=# onclick=foo("mocha_bad","relig")>Relig</a> </li>
<!--<li><a href=2.jsp>2</a></li>
<li><a href=3.jsp>3</a> </li>
<li><a href=4.jsp>4</a></div></li></ul> !-->
</div>
<div class=bottom><p class=foot align=center>© Мухамеджанов Константин Котибович</p></div>
</div>

<script src="../jquery/jquery-3.0.0.min.js"></script>


<script>
function foo(h,t){
$.ajax({
url: './rArticle.jsp',
data: 'header='+h+'&type='+t,
type: 'get',
success:function(data){ //veshaem svoi obrabotchik
$('.resultArticle').html(data);
}
});
}
</script>
<script>end()</script>

</body>
</html>


