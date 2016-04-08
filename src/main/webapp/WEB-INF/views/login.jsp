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
                    <c:if test="${param.error != null}">
                        <p style="color:red">Invalid username or password.</p>
                    </c:if>

                    <c:if test="${param.logout != null}">
                        <p style="color:red">You have been logged out.</p>
                    </c:if>
                        
                    <f:form action="login" method="POST" >
                        <input type="email" name="username" placeholder="email"/><br/>
                        <input type="password" name="password" placeholder="password"/><br/><br/>
                        
                        <a href="${pageContext.request.contextPath}/" class="btn btn-danger" role="button">Cancelar</a> 
                        <input type="submit" class="btn btn-success btn-md" value="Entrar"/>
                    </f:form>
                </div>
                <div class="col-md-4"></div>
            </div>

        </div>


    </body>
</html>
