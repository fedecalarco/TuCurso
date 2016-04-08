<%-- 
    Document   : AddUser
    Created on : 20-mar-2016, 18:25:55
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
        <style type="text/css"><%@include file="/resources/css/styles.css" %></style>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
        <title>TuCurso</title>
    </head>
    <body>

        <div class="container-fluid" style="background-color: whitesmoke" >
            <header>
                <%@include file="/resources/maquetacion/header.jsp" %>
            </header>



            <div class="row" >

                <div class="col-md-2"></div>

                <div class="col-md-8" style="background-color: white;margin: 20px" >

                    <h1>Completa tus datos:</h1><hr>
                    <div>

                        <f:form action="${pageContext.request.contextPath}/user/register" modelAttribute="User">

                            <label for="nombreid">Nombre completo: </label><br/>
                            <input type="text" name="name" id="nombreid" value="" class="form-control"  required/><br/><br/>

                            <label for="dniid">DNI:  </label><br/>
                            <input type="text" name="dni" id="dniid" value="" class="form-control"  required/><br/><br/>

                            <label for="emailid">Correo: </label><br/>
                            <input type="email" name="email" id="emailid" value="" class="form-control"  required/><br/><br/>

                            <label for="telefonoid">Telefono: </label><br/>
                            <input type="text" name="phone" id="telefonoid" value="" class="form-control"  required/><br/><br/>

                            <br/>

                            <div style="text-align: center"> 
                                <a href="${pageContext.request.contextPath}/" class="btn btn-danger btn-md" role="button">Cancelar</a> 
                                <input type="submit" id="bEnviar" class="btn btn-success btn-md" value="Inscribirse!"/>


                            </div>

                        </f:form>



                    </div>





                </div>

                <div class="col-md-2"> </div>






                </body>
                </html>
