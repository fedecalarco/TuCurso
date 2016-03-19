<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tu Curso</h1>

        <f:form action="${pageContext.request.contextPath}/user/registrar" >
            <input type="submit" id="bEnviar" class="btn btn-success btn-lg" value="Registrar usuario"/>
        </f:form>
        
            <br><br>

        <f:form action="${pageContext.request.contextPath}/course/addCourse" >
            <input type="submit" id="bEnviar" class="btn btn-success btn-lg" value="Agregar Curso"/>
        </f:form>

            <br><br>
        <a href="${pageContext.request.contextPath}/course/showCourses">Ver Cursos</a>

    </body>
</html>
