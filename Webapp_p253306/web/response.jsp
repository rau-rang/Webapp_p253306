<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : response
    Created on : 16-ago-2013, 15:26:31
    Author     : Rango
--%>
<sql:query var="counselorQuery" dataSource="jdbc/IFPWAFCAD">
    SELECT * FROM nombre, datos
    WHERE datos.Nombre_id = nombre.Nombre_idfk
    AND nombre.Datos_id = ? <sql:param value="${param.Datos_id}"/>
</sql:query>
    
   <c:set var="counselorDetails" value="${counselorQuery.rows[0]}"/>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Matricula - ${counselorDetails.name}</title>
    </head>
    <body>
        <h1><table border="0">
    <thead>
        <tr>
            <th colspan="2">${counselorDetails.name}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><strong>Info Personal: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">${counselorDetails.description}</span></td>
        </tr>
        <tr>
            <td><strong>Maestria: </strong></td>
            <td>${counselorDetails.first_name} ${counselorDetails.last_name}
                <br>
                <span style="font-size:smaller; font-style:italic;">
                Inscrito : ${counselorDetails.member_since}</span>
            </td>
        </tr>
        <tr>
            <td><strong>Detalles de COntacto: </strong></td>
            <td><strong>email: </strong>
                <a href="mailto:${counselorDetails.email}">${counselorDetails.email}</a>
                <br><strong>tel.: </strong>${counselorDetails.telephone}
            </td>
                  <td><form action="index.jsp">
                            </select>
                            <input type ="submit" value="Regreso" name="Regreso" />
                        </form>
              
        </tr>
    </tbody>
</table>
</h1>
    </body>
</html>
