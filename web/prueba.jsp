<%-- 
    Document   : prueba
    Created on : 06-may-2019, 20:37:56
    Author     : alumno
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HOLA DESDE UN JSP</h1>
        <%
            String apellido="Gonzales";
            // CODIGO JAVA EN UN SCRIPTLET
            for (int i = 1; i <= 10; i++) {
                out.println(i + ",");
            }
        %>
        
        <%! String nombre="Juan"; %>
        <p>Nombre: <%= nombre %></p>
        <p>Apellido: <%= apellido %></p>
        <p>Fecha: <%= (new Date()).toLocaleString() %></p>
        
        <%
            // Simular error 500
            // int numero = Integer.parseInt("A");
        %>
    </body>
</html>
