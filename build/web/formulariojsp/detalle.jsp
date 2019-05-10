<%-- 
    Document   : detalle
    Created on : 07-may-2019, 20:50:10
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>DETALLE DEL FORMULARIO</h1>
        <%
            // 1. Obtener datos del formulario
            String nombre = request.getParameter("txtNombre");
            int edad = Integer.parseInt(request.getParameter("txtEdad"));
            String estadoCivil = request.getParameter("rbtEstadoCivil");
            String pasatiempos[] = request.getParameterValues("cbxPasatiempos");
        %>
        
        <p>Nombre: <%= nombre %></p>
        <p>Edad: <%= edad %></p>
        <p>Estado civil: <%= estadoCivil %></p>
        <p>Pasatiempos: </p>
        <ul>
        <%
            if(pasatiempos != null){
                for(String pasatiempo : pasatiempos){
                    out.println("<li>"+pasatiempo+"</li>");
                }
            }                  
        %>
        </ul>
    </body>
</html>
