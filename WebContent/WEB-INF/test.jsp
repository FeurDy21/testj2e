<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%@page import="com.feurdy.beans.Personne"%>

<%@ page pageEncoding="UTF-8" %>


<%@ page import="java.util.List, java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p><%@ include file="formlaire-personne.jsp" %></p>

<p>Je suis bon en JEE, en veritable JEE</p>

<c:out value="je suis fort en JEE"> ok ok</c:out>



<%


 String varr= (String) request.getAttribute("var");
  out.println(varr);
   
  Personne pers= (Personne) request.getAttribute("personne");
  
  out.print(pers.getNom());
%>

je crois
</body>
</html>