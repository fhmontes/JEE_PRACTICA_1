<%-- 
    Document   : editar
    Created on : 14-may-2019, 20:49:24
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
        <h1>EDITAR CATEGORIA</h1>
        <!-- 1. Conectarse a la base de datos -->
        <%@include file="../../WEB-INF/jspf/conexion.jspf" %>
        
        <!-- 2. Realizar consulta a la base de datos -->
        <sql:query var="rs" dataSource="${ds}">
            select * from categoria where id = ?
            <sql:param value="${Integer.parseInt(param.id)}"/>
        </sql:query>
            
        <form action="actualizar.jsp" method="post">
            Categoria:
            <input type="text" name="txtCategoria" value="${rs.rows[0].categoria}"/>                                       
            <br/>
            Descripcion:
            <input type="text" name="txtDescripcion" value="${rs.rows[0].descripcion}"/>
            <br/>
            <input type="submit" value="Guardar"/>
        </form>
    </body>
</html>
