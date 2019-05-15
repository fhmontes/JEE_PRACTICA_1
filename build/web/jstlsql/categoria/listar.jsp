<%-- 
    Document   : listar
    Created on : 14-may-2019, 19:59:10
    Author     : alumno
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTA DE CATEGORIAS</h1>
        <!-- 1. Conectarse a la base de datos -->
        <%@include file="../../WEB-INF/jspf/conexion.jspf" %>
        
        <!-- 2. Realizar consulta a la base de datos -->
        <sql:query var="rs" dataSource="${ds}">
            select * from categoria
        </sql:query>
        
        <!-- 3. Mostrar datos de la consulta -->
        <a href="nuevo.jsp">Nueva categoria</a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>CATEGORIA</th>
                <th>DESCRIPCION</th>
                <th>CREADO</th>
            </tr>
            <c:forEach var="cat" items="${rs.rows}">
            <tr>
                <td>${cat.id}</td>
                <td>${cat.categoria}</td>
                <td>${cat.descripcion}</td>
                <td>${cat.created_at}</td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
