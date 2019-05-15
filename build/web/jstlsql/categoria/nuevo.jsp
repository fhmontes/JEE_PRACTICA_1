<%-- 
    Document   : nuevo
    Created on : 14-may-2019, 20:22:27
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
        <h1>NUEVA CATEGORIA</h1>
        <form action="guardar.jsp" method="post">
            Categoria:
            <input type="text" name="txtCategoria"/>
            <br/>
            Descripcion:
            <input type="text" name="txtDescripcion"/>
            <br/>
            <input type="submit" value="Guardar"/>
        </form>
    </body>
</html>
