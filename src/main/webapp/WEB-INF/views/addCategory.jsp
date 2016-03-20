<%-- 
    Document   : addCategory
    Created on : Mar 19, 2016, 9:19:08 PM
    Author     : fede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Categoria:</h1>
    <f:form action="${pageContext.request.contextPath}/category/addCategory" modelAttribute="Category">

        <label for="name">Nombre: </label><br/>
        <input type="text" name="name" id="name" value="" class="input" required autofocus/><br/><br/>

        <br/>
        <a href="${pageContext.request.contextPath}/" class="btn btn-warning btn-lg" role="button">Cancelar</a> 
        <input type="submit" id="bEnviar" class="btn btn-success btn-lg" value="Guardar"/>

    </f:form>
    </body>
</html>
