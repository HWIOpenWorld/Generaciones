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
        <h1>Perteneces a la generación: </h1>
        <%
            String nom1 = null;
            int edad = 0;
            String url3 = "Servlet";
            
           nom1 = request.getParameter("nombre");
           edad = Integer.parseInt(request.getParameter("edad"));
        %>
        <br><a href="<%=url3%>">
        regresar </a>
        <%
            String gen = "a";
            int aNac = 0;
            
            aNac = 2022 - edad;
            if (aNac >= 1946 && aNac < 1965) {
                gen = "Baby boomer";
            }
            else{
                if (aNac >= 1965 && aNac <= 1981) {
                    gen = "X";
                }
                else{
                    if (aNac >= 1982 && aNac < 1996) {
                        gen = "de los Millennials";
                    }
                    else{
                        if (aNac >= 1996 && aNac <= 2012) {
                            gen = "Z";
                        }
                        else{
                            gen = "El que hizo esta parte del programa no quizo poner generaci&oacute;n para los mayores de 76 y menores de 10 años porque si &#x1F44D";
                        }
                    }
                }
            }
        %>
        
        <%=gen%>
    </body>
</html>
