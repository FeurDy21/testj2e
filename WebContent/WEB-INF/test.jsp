<%@page import="com.feurdy.beans.Personne"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>Je suis bon en JEE, en veritable JEE</p>

<!-- <%@ include file="uneAutreJSP.jsp" %>pour inclure la page unrAutreJSP en lagage JSP         <%@ page import="java.util.List, java.util.Date" pour faire de l'importation  %>-->

<%
 String varr= (String) request.getAttribute("var");
  out.println(varr);
   
  Personne pers= (Personne) request.getAttribute("personne");
  
  out.print(pers.getNom());
%>

je crois
</body>
</html>