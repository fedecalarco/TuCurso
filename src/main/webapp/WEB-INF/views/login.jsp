<%-- 
    Document   : Login
    Created on : 06-abr-2016, 3:56:55
    Author     : fedec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <style type="text/css"><%@include file="/resources/css/styles.css" %></style>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
        <title>TuCurso</title>
    </head>
    <body>


        <div class="container-fluid" style="background-color: whitesmoke;height: 100%">

            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="background-color: white;text-align: center; margin-top: 15%">
                    <h3><b>Por favor inicia sesión.</b></h3><hr/>
                    <a href="${pageContext.request.contextPath}/organization/register">Registrar</a>
                    <p style="color: red">${ok}</p>
                    <f:form action="${pageContext.request.contextPath}/login" modelAttribute="Account" >
                        <input type="email" name="email" placeholder="email"/><br/>
                        <input type="password" name="password" placeholder="password"/><br/><br/>
                        
                        <input type="submit" class="btn btn-success btn-md" value="Entrar"/>
                    </f:form>
                </div>
                <div class="col-md-4"></div>
            </div>

        </div>


    </body>
</html>
