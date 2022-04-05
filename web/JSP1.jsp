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
            int edad = 0;
            String url3 = "Servlet";
            
           nom1 = request.getParameter("nombre");
           edad = Integer.parseInt(request.getParameter("edad"));
        %>
        
        <%
            String gen = "a";
            int aNac = 0;
            
            aNac = 2022 - edad;
            if (aNac >= 1946 && aNac < 1965) {
                gen = <font color=purple>"Baby boomer"</font>;
            }
            else{
                if (aNac >= 1965 && aNac <= 1981) {
                    gen = <font color=orange>"X"</font>;
                }
                else{
                    if (aNac >= 1982 && aNac < 1996) {
                        gen = <font color=blue>"de los Millennials"</font>;
                    }
                    else{
                        if (aNac >= 1996 && aNac <= 2012) {
                            gen = <font color=yellow>"Z"</font>;
                        }
                        else{
                            gen = "El que hizo esta parte del programa no quizo poner generaci&oacute;n para los mayores de 76 y menores de 10 años porque si &#x1F44D";
                            <hr size=6 color=black> </hr>
                            
                        }
                    }
                }
            }
        %>
        
        <h1><%=nom1%> Perteneces a la generación: <%=gen%></h1>
        
        <br><a href="<%=url3%>">
        regresar </a>
        
        
        <br>
    </body>
</html>
