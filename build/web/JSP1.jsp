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
    <body bgcolor=orange>
    <img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGEsEDZNKhE1LD42Qp4zirzgSkDp10RTulQA&usqp=CAU width=350 height=200 align=middle>   
       
        <%
            String nom1 = null;
            int edad = 0;
            String url3 = "Servlet";
            
           nom1 = request.getParameter("nombre");
           edad = Integer.parseInt(request.getParameter("edad"));
        %>
        <hr size=6 color=black></hr>
        <%
            String gen = "a";
            int aNac = 0;
            
            aNac = 2022 - edad;
            if (aNac >= 1946 && aNac < 1965) {
                gen = "Baby boomer";
         <%
                <font color=purple> <%=gen%>
         %>
            }
            else{
                if (aNac >= 1965 && aNac <= 1981) {
                    gen = "X";
           <%
                    <font color=red> <%=gen%>
           %>
                }
                else{
                    if (aNac >= 1982 && aNac < 1996) {
                        gen = "de los Millennials";
            <%
                        <font color=blue> <%=gen%>
            %>
                    }
                    else{
                        if (aNac >= 1996 && aNac <= 2012) {
                            gen = "Z";
            <%
                            <font color=yellow> <%=gen%>
            %>
                        }
                        else{
                            gen = "El que hizo esta parte del programa no quizo poner generaci&oacute;n para los mayores de 76 y menores de 10 años porque si &#x1F44D";
                        
            <%
                            <font size=10 >
            %>
                        }
                    }
                }
            }
        %>
        
        <h1><%=nom1%> Perteneces a la generación: <%=gen%></h1>
        
        <br><a href="<%=url3%>">
        regresar </a>
        
        <img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQGLgGL0V45892Y7Epqe8_J4YCN9I1PmkVrw&usqp=CAU align=middle>
        <br>
    </body>
</html>
