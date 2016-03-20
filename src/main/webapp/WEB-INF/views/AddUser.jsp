<%-- 
    Document   : AddUser
    Created on : 20-mar-2016, 18:25:55
    Author     : fedec
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
<!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div>

            <f:form action="${pageContext.request.contextPath}/user/registrar" modelAttribute="Usuario">

                <label for="usernameid">Username: </label><br/>
                <input type="text" name="username" id="usernameid" value="" class="form-control" required autofocus/><br/><br/>

                <label for="passwordid">Password: </label><br/>
                <input type="password" name="password" id="passwordid" value="" class="form-control"  required minlength=6/><br/><br/>

                <label for="emailid">Correo: </label><br/>
                <input type="email" name="email" id="emailid" value="" class="form-control"  required/><br/><br/>

                <label for="nombreid">Nombre: </label><br/>
                <input type="text" name="Persona.nombre" id="nombreid" value="" class="form-control"  required/><br/><br/>

                <label for="apellidoid">Apellido: </label><br/>
                <input type="text" name="Persona.apellido" id="apellidoid" value="" class="form-control"  required/><br/><br/>

                <label for="dniid">DNI:  </label><br/>
                <input type="text" name="Persona.dni" id="diniid" value="" class="form-control"  required/><br/><br/>

                <label for="telefonoid">Telefono: </label><br/>
                <input type="text" name="Persona.telefono" id="telefonoid" value="" class="form-control"  required/><br/><br/>

                <br/>
                <a href="${pageContext.request.contextPath}/" class="btn btn-warning btn-lg" role="button">Cancelar</a> 
                <input type="submit" id="bEnviar" class="btn btn-success btn-lg" value="Registrar"/>

            </f:form>



        </div>



    </body>
</html>
