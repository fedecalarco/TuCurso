<%-- 
    Document   : showCourses
    Created on : 19-mar-2016, 14:37:44
    Author     : fedec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${organization.getName()}</h1>

    <td/>
    <img src="/TuCurso/organization/imageDisplay?id=${organization.getOrganization_ID()}" class="img-thumbnail"  height="150"/>
    <td/>
    <h2>Descripción:</h2>
    ${organization.getDescription()}
    <td/>
    <h2>Lista de cursos:</h2>
    <table class="table table-hover" border="0">
        <tr>
            <th>Nombre</th>
            <th>Categoria</th>
            <th>Organizacion</th>
            <th>Descripción</th>
            <th>Precio</th>
            <th>Duración</th>
            <th>Fecha inicio</th>
            <th>Lugar</th>
        </tr>
        <c:forEach items="${lstCourses}" var="p">
            <tr>
                <td>${p.getName()}</td>
                <td>${p.getCategory().getName()}</td>
                <td><a href="${pageContext.request.contextPath}/organization/showOrganization?id=${p.getOrganization().getOrganization_ID()}">${p.getOrganization().getName()}</a></td>
                <td>${p.getDescription()}</td>
                <td>$ ${p.getPrice()}</td>
                <td>${p.getDuration()}</td>
                <td>${p.getDate()}</td>
                <td>${p.getLocation()}</td>


            </tr>
        </c:forEach>



    </table>


    <a href="${pageContext.request.contextPath}/">Index</a>


</body>
</html>
