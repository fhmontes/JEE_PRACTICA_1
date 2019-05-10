<%-- 
    Document   : jstl
    Created on : 09-may-2019, 20:19:21
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
        <h1>JSTL</h1>
        <h2>C:OUT</h2>
        Nombre: <c:out value="Jose"/> <br/>
        Suma: <c:out value="2+5"></c:out> <br/>
        Suma: <c:out value="${2 + 5}"></c:out> <br/>
        Comparar: <c:out value="${2 >= 5}"></c:out> <br/>
        
        <h2>C:SET</h2>
        <c:set var="nombre" value="Juan Perez"/>
        Nombre: <c:out value="${nombre}"/>
            
        <h2>C:IF</h2>
        <c:if test="${empty param.edad}">
            <c:out value="Debe pasar un parametro por la url ?edad=45"/>
        </c:if>
        
        <c:set var="edad" value="${param.edad}"/>
        <c:if test="${edad >= 18}">
            <c:out value="Usted es mayor de edad"/>
        </c:if>
        <c:if test="${edad < 18}">
            <c:out value="Usted es menor de edad"/>
        </c:if>
        
        <h2>C:CHOOSE</h2>
        <c:set var="mes" value="3"/>
        <c:choose>
            <c:when test="${mes==1}">
                <c:out value="Enero"/>
            </c:when>
            <c:when test="${mes==2}">
                <c:out value="Febrero"/>
            </c:when>
            <c:when test="${mes==3}">
                <c:out value="Marzo"/>
            </c:when>
            <c:otherwise>
                <c:out value="El mes ingresado no existe."/>
            </c:otherwise>
        </c:choose>
    </body>
</html>
