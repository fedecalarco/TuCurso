<%-- 
    Document   : showCourses
    Created on : 19-mar-2016, 14:37:44
    Author     : fedec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css"><%@include file="/resources/css/styles.css" %></style>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
        <title>JSP Page</title>
    </head>
    <body>

        <div class="container-fluid">
            <header>
                <%@include file="/resources/maquetacion/header.jsp" %>
            </header>

            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">

                    <div class="row">
                        <div class="col-md-2">Filtros</div>
                        <div class="col-md-10">

                            <h1>Cursos</h1>
                            <div>
                                <td/>
                                <table class="table table-hover" border="0">
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Categoria</th>
                                        <th>Organizacion</th>
                                        <th>Descripcion</th>
                                        <th>Precio</th>
                                        <th>Duracion</th>
                                        <th>Fecha inicio</th>
                                        <th>Lugar</th>
                                    </tr>
                                    <c:forEach items="${listCourses}" var="p">
                                        <tr>
                                            <td>${p.getName()}</td>
                                            <td>${p.getCategory().getName()}</td>
                                            <td><a href="${pageContext.request.contextPath}/organization/showOrganization?id=${p.getOrganization().getOrganization_ID()}">${p.getOrganization().getName()}</a></td>
                                            <td>${p.getDescription()}</td>
                                            <td>$ ${p.getPrice()}</td>
                                            <td>${p.getDuration()}</td>
                                            <td>${p.getDate()}</td>
                                            <td>${p.getLocation()}</td>


                                        </tr>
                                    </c:forEach>



                                </table>

                            </div>


                        </div>

                    </div>














                </div>
                <div class="col-md-1"></div>


                <footer class="navbar navbar-fixed-bottom">
                    <div class="row" id="footer">
                        <div >
                            <div class="col-md-4"><a href="${pageContext.request.contextPath}/">Index</a></div>
                            <div class="col-md-4" >
                                <a href=""><img src="http://icons.iconarchive.com/icons/martz90/circle/512/fb-icon.png"  height="45" width="45"/></a>
                                <a href=""><img src="http://www.enriquegranados.mx/images/tw.png" height="45" width="45"/></a>
                                <br/>@TuCurso.com.ar
                            </div>
                            <div class="col-md-4"></div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>





    </body>
</html>
