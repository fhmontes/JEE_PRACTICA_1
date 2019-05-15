<%-- 
    Document   : guardar
    Created on : 14-may-2019, 20:26:36
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
        <!-- 1. Conectarse a la base de datos -->
        <%@include file="../../WEB-INF/jspf/conexion.jspf" %>
        
        <!-- 2. Realizar consulta a la base de datos -->
        <sql:update var="rs" dataSource="${ds}">
            insert into categoria(categoria, descripcion)
            values ('<%= request.getParameter("txtCategoria") %>',
                    '<%= request.getParameter("txtDescripcion") %>')
        </sql:update>
        
        <!-- 3. Mostrar mensaje -->
        <h1>La categoria fue guardada!</h1>
        <a href="listar.jsp">Volver al listado</a>
    </body>
</html>
