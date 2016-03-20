<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tu Curso</h1>

        <f:form action="${pageContext.request.contextPath}/user/registrar" >
            <input type="submit" id="bEnviar" class="btn btn-success" value="Registrar usuario"/>
        </f:form>

        <br><br>


        <br><br>
        <a href="${pageContext.request.contextPath}/course/showCourses">Ver Cursos</a>
        <a href="${pageContext.request.contextPath}/organization/addOrganization">Agregar Organizacion</a>
        <a href="${pageContext.request.contextPath}/course/addCourse">Agregar Curso</a>
        <a href="${pageContext.request.contextPath}/category/addCategory">Agregar Categoria</a>

    </body>
</html>
