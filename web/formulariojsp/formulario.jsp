<%-- 
    Document   : formulario
    Created on : 07-may-2019, 20:34:40
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
        <h1>FORMULARIO JSP</h1>
        <form action="detalle.jsp" method="POST">
            <label>Ingrese su nombre</label>
            <input type="text" name="txtNombre"/>
            <br/>
            <label>Ingrese su edad</label>
            <input type="number" name="txtEdad"/>
            <br/>
            <label>Estado civil:</label>
            <input type="radio" name="rbtEstadoCivil" value="Soltero" checked/> Soltero
            <input type="radio" name="rbtEstadoCivil" value="Casado"/> Casado
            <input type="radio" name="rbtEstadoCivil" value="Divorciado"/> Divorciado
            <input type="radio" name="rbtEstadoCivil" value="Viudo"/> Viudo
            <br/>
            <label>Seleccione sus pasatiempos:</label>
            <input type="checkbox" name="cbxPasatiempos" value="Bailar"/> Bailar
            <input type="checkbox" name="cbxPasatiempos" value="Futbol"/> Futbol
            <input type="checkbox" name="cbxPasatiempos" value="Nadar"/> Nadar
            <input type="checkbox" name="cbxPasatiempos" value="Leer"/> Leer
            <br/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
