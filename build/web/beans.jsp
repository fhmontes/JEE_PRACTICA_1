<%-- 
    Document   : beans
    Created on : 08-may-2019, 20:14:39
    Author     : alumno
--%>

<%@page import="com.educomser.bean.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JAVA BEANS</h1>
        <h2>Empleado 1</h2>
        <%
            Empleado emp1=new Empleado();
            emp1.setNombre("Juan");
            emp1.setEdad(25);
            emp1.setSueldo(6000);
        %>
        Nombre <%= emp1.getNombre() %> <br>
        Edad <%= emp1.getEdad()%> <br>
        Sueldo <%= emp1.getSueldo()%> <br>
        
        <h2>Empleado 2</h2>
        <jsp:useBean id="emp2" class="com.educomser.bean.Empleado"/>
        <jsp:setProperty name="emp2" property="nombre" value="Ana"/>
        <jsp:setProperty name="emp2" property="edad" value="45"/>
        <jsp:setProperty name="emp2" property="sueldo" value="13500"/>
        Nombre: <jsp:getProperty name="emp2" property="nombre"/> <br>
        Edad: <jsp:getProperty name="emp2" property="edad"/> <br>
        Sueldo: <jsp:getProperty name="emp2" property="sueldo"/> <br>
    </body>
</html>
