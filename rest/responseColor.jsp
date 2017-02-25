<%
String s=request.getParameter("color");
int i=Integer.parseInt(s);

switch(i){
case 1:out.println("green");break;
case 2:out.println("blue");break;
case 3:out.println("yellow");break;
}

%>
