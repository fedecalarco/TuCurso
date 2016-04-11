<%-- 
    Document   : newOrganization
    Created on : 06-abr-2016, 0:50:52
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
        <div class="container-fluid" style="background-color: whitesmoke">

            <header>
                <%@include file="/resources/maquetacion/header.jsp" %>
            </header>

            <div class="row">
                <div class="col-md-2"></div> 
                <div class="col-md-8" style="background-color: white; margin: 20px">




                    <f:form action="${pageContext.request.contextPath}/organization/register" modelAttribute="Provider">

                        <b>Datos del centro:</b><hr/>


                        <label for="nameid">Nombre: </label><br/>
                        <input type="text" name="nameOrganization" id="nameid" value="" class="form-control"  required/><br/>

                        <br/>
                        <b>Datos de acceso:</b><hr/>

                        <label for="emailid">Email: </label><br/>
                        <input type="email" name="email" id="emailid" value="" class="form-control"  required/><br/>

                        <label for="passwordid">Contraseña: </label><br/>
                        <input type="password" name="password" id="passwordid" value="" class="form-control"  required minlength=6/><br/>



                        <br/>
                        <div style="text-align: center">
                            <a href="${pageContext.request.contextPath}/" class="btn btn-danger btn-md" role="button">Cancelar</a> 
                            <input type="submit" id="bEnviar" class="btn btn-success btn-md" value="Registrar"/>

                        </div>

                    </f:form>



                </div> 
                <div class="col-md-2"></div> 

            </div>


            <footer class="footer">
                <%@include file="/resources/maquetacion/footer.jsp" %>
            </footer>

        </div>





    </body>
</html>
