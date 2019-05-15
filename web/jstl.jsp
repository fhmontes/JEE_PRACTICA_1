<%-- 
    Document   : jstl
    Created on : 09-may-2019, 20:19:21
    Author     : alumno
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

        <h2>C:FOR</h2>
        <ul>
            <c:forEach var="i" begin="1" end="10" step="1">
                <li>${i}</li>
                </c:forEach>
        </ul>

        <h2>COLECCION</h2>
        <%
            String nombres[] = {"Mateo", "Marcos", "Lucas", "Juan"};
            // Variable a nivel de pagina
            pageContext.setAttribute("nombres", nombres);
        %>
        <c:forEach var="nom" items="${nombres}">
            ${nom}, 
        </c:forEach>
            
        <h2>C:REDIRECT</h2>
        <!--c:redirect url="prueba.jsp"/-->
        
        <h2>FORMAT DATE</h2>
        <c:set var="fecha" value="<%= new java.util.Date() %>"/>
        Fecha: <c:out value="${fecha}"/><br/>
        Fecha con formato corto: <fmt:formatDate value="${fecha}"/><br/>
        Fecha con formato largo: <fmt:formatDate value="${fecha}" dateStyle="long"/><br/>
        Fecha con formato personalizado: <fmt:formatDate value="${fecha}" pattern="dd/MM/yyyy"/><br/>
        Son las: <fmt:formatDate value="${fecha}" pattern="HH:mm:ss"/><br/>
        
        <h2>FORMAT NUMBER</h2>
        <c:set var="sueldo" value="12500.2369"/>
        Sueldo sin formato: <c:out value="${sueldo}"/><br/>
        Sueldo con formato moneda: <fmt:formatNumber value="${sueldo}" type="currency" currencySymbol="Bs."/><br/>
        Sueldo dos decimales: <fmt:formatNumber value="${sueldo}" type="number" maxFractionDigits="3" pattern="#.#"/><br/>
    </body>
</html>
