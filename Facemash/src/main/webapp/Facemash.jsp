<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Esercizio Facemash</title>
<style>
header{
background-color:darkred;
color:white;
}

table {
margin: 0 auto;
}
</style>
</head>
<body>
<%
Random rand=new Random();
String[] cal= new String[]{"img/jacob.jpeg", "img/benedict.jpeg", "img/tobeymaguire.jpeg", "img/alfredmolina.jpeg"};
int posizionec1=0;
int posizionec2=0;
posizionec1=rand.nextInt(cal.length);
posizionec2=rand.nextInt(cal.length);
while(posizionec1==posizionec2){
posizionec2=rand.nextInt(cal.length);
}
String nome1=cal[posizionec1];

switch(nome1){
case "img/jacob.jpeg":
nome1="Jacob Batalon";
break;
case "img/benedict.jpeg":
nome1="Benedict Cumberbatch";
break;
case "img/tomholland.jpeg":
nome1="Tom Holland";
break;
case "img/alfredmolina.jpeg":
nome1="Alfred Molina";
break;
}

String nome2=cal[posizionec2];

switch(nome2){
case "img/williamdafoe.jpeg":
nome2="William Dafoe";
break;
case "img/thomashaden.jpeg":
nome2="Thomas Haden Church";
break;
case "img/tobeymaguire.jpeg":
nome2="Tobey Maguire";
break;
case "img/andrewgarfield.jpeg":
nome2="Andrew Garfield";
break;
}
%>
<header>FACEMASH</header>
<p>Who is better? Click to choose</p>
<table>
<tr>
<td><a href="Pagina2.jsp?nome=<%=nome1%>&img=<%=cal[posizionec1] %>"><img src="<%=cal[posizionec1] %>" height="200px" width="300px"></a></td>
     <td>Or</td>
    <td><a href="Pagina2.jsp?nome=<%=nome2%>&img=<%=cal[posizionec2] %>"><img src="<%=cal[posizionec2] %>" height="200px" width="300px"></a></td>
</tr>
</table>
</body>
</html>
