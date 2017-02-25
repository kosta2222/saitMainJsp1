<% 
String s=request.getParameter("photo");
String s2=request.getParameter("dir");
out.println("<img src=./rest/"+s2+"/"+s+".JPG width=90% />");
 %>