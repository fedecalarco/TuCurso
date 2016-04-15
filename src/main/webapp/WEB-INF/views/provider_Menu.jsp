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
        <title>Tu Curso</title>
    </head>
    <body>

        <div class="container-fluid" style="background-color: whitesmoke" >
            <header>
                <%@include file="/resources/maquetacion/header.jsp" %>
            </header>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8" style="background-color: white; margin: 20px">


                    <h1 style="text-align: center"> ${session_user_provider.getNameOrganization()}</h1><hr>

                    <a href="${pageContext.request.contextPath}/organization/updateOrganization">Actualizar perfil</a>
                    <a href="${pageContext.request.contextPath}/course/addCourse">Nuevo curso</a>

                    <h3>Mis cursos</h3>

                    <div>
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
                                <th>Administrar</th>
                            </tr>
                            <c:forEach items="${lstCourses}" var="p">
                                <tr>
                                    <td><a href="${pageContext.request.contextPath}/course/describeCourse?id=${p.getCouse_ID()}">${p.getName()}</a></td>
                                    <td>${p.getCategory().getName()}</td>
                                    <td>${p.getOrganization().getName()}</td>
                                    <td>${p.getDescriptionShort()}</td>
                                    <td>$ ${p.getPrice()}</td>
                                    <td>${p.getDuration()}</td>
                                    <td>${p.getDate()}</td>
                                    <td>${p.getLocation()}</td>
                                    <td><a href="${pageContext.request.contextPath}/course/delete?courseId=${p.getCouse_ID()}">Borrar</a> 
                                        <a href="${pageContext.request.contextPath}/course/update?courseId=${p.getCouse_ID()}">Actualizar</a>
                                    </td>

                                </tr>
                            </c:forEach>



                        </table>


                    </div>


                </div>
                <div class="col-md-2"></div>


            </div>

            <footer class="footer">
                <%@include file="/resources/maquetacion/footer.jsp" %>
            </footer>

        </div>



    </body>
</html>
