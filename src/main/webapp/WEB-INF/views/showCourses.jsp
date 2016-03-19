<%-- 
    Document   : showCourses
    Created on : 19-mar-2016, 14:37:44
    Author     : fedec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <table class="table table-hover" border="0">
            <tr>
                <th>Nombre</th>
                <th>Username</th>
                <th>Contraseña</th>
                <th>Email</th>
                <th>Saldo</th>
                <th>Accion</th>
            </tr>
            <c:forEach items="${lst}" var="p">
                <tr>
                    <td>${p.name}</td>
                    <td>${p.username}</td>
                    <td>${p.password}</td>
                    <td>${p.email}</td>
                    <td>$ ${p.getCuenta().getSaldo()}</td>


                    <td>
                        <a href="edit?id=${p.userId}">Edit</a>
                        <a href="remove?id=${p.userId}" onclick="return confirm('Estas seguro?')">Remove</a>
                    </td>


                </tr>
            </c:forEach>



        </table>



    </body>
</html>
