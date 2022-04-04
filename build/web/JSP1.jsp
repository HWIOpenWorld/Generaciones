<%-- 
    Document   : JSP1
    Created on : 3/04/2022, 10:56:02 PM
    Author     : carlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados</title>
    </head>
    <body>
        <%
            String nom1 = null;
            String a = null;
            String url3 = "Servlet";
            
           nom1 = request.getParameter("nombre");
           a = request.getParameter("año");
        %>
        <h1><%=nom1%> Perteneces a la generación: </h1>
        
        <br><a href="<%=url3%>">
        regresar </a>
    </body>
</html>
