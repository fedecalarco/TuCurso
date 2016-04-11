<%-- 
    Document   : addOrganization
    Created on : 19-mar-2016, 16:44:02
    Author     : fedec
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>

<!DOCTYPE html>
<html>
    <head>
<!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Organizacion:</h1>
        <f:form action="${pageContext.request.contextPath}/organization/addOrganization" modelAttribute="Organization" role="form" >//enctype="multipart/form-data" acceptCharset="utf-8"

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
            <input type="hidden" name="organization_ID" value="${session_user_provider.getOrganizationProfile().getOrganization_ID()}"/>
            
            <div class="form-group">
                <label for="name">Nombre: </label><br/>
                <input type="text" name="name" id="name" class="form-control" value="${session_user_provider.getNameOrganization()}" maxlength="50" required autofocus/>
            </div>

            <div class="form-group">
                <label for="description">Descripcion:</label>
                <textarea name="description" class="form-control" rows="5" id="description" >${session_user_provider.getOrganizationProfile().getDescription()}</textarea>
            </div>

            <div class="form-group">
                <label for="logos">Logo:</label>
                <input type="file" name="logos" id="logos"> 
            </div>


            <div class="form-group">
                <a href="${pageContext.request.contextPath}/" class="btn btn-danger" role="button">Cancelar</a> 
                <input type="submit" id="bEnviar" class="btn btn-success" value="Guardar"/>
            </div>

        </f:form>


    </body>
</html>
