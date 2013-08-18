<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 16-ago-2013, 14:34:09
    Author     : Rango
--%>
<sql:query var="nombres" dataSource="jdbc/IFPWAFCAD">
    SELECT Datos_id, name FROM nombre
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desarrollo de Aplicaciones Web</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Desarrollo de Aplicaciones Web</h1>
        <h2>Maestria en Software Libre</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>Informacion de Alumnos</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Para ver la información
                        seleccione el alumno a consultar:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong>Seleccione matricula:</strong>
                            <select name="Datos_id">

                                <c:forEach var="row" items="${nombres.rows}">
                                    <option value="${row.Datos_id}">${row.name}</option>
                                </c:forEach>

                            </select>
                            <input type ="submit" value="submit" name="submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
