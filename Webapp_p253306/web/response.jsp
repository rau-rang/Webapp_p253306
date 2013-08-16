<%-- 
    Document   : response
    Created on : 16-ago-2013, 15:26:31
    Author     : Rango
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Directorio - {placeholder}</title>
    </head>
    <body>
        <h1><table border="0">
    <thead>
        <tr>
            <th colspan="2">{placeholder}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><strong>Info Personal: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">{placeholder}</span></td>
        </tr>
        <tr>
            <td><strong>Maestria: </strong></td>
            <td>{placeholder}
                <br>
                <span style="font-size:smaller; font-style:italic;">
                Inicio: {placeholder}</span>
            </td>
        </tr>
        <tr>
            <td><strong>Detalles de COntacto: </strong></td>
            <td><strong>email: </strong>
                <a href="mailto:{placeholder}">{placeholder}</a>
                <br><strong>tel.: </strong>{placeholder}
            </td>
        </tr>
    </tbody>
</table>
</h1>
    </body>
</html>
