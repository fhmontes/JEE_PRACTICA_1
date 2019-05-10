<%-- 
    Document   : redireccionar
    Created on : 08-may-2019, 20:45:33
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
        <%
            // response.sendRedirect("prueba.jsp");
        %>
        <jsp:forward page="prueba.jsp"/>
    </body>
</html>
