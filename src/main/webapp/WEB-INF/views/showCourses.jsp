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
            <div class="row"><div class="col-md-12" style="text-align:center "><h1>Cursos</h1></div></div>
            <div class="row">

                <div class="col-md-1"></div>
                <div class="col-md-10">

                    <div class="row">
                        <div class="col-md-2">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">Filtros</div>
                                    <div class="panel-body">
                                        <c:forEach items="${listaFiltros}" var="f">
                                            <a href="${pageContext.request.contextPath}/course/showCourses">${f}</a><br/>

                                        </c:forEach>

                                    </div>
                                </div>

                                <div class="panel panel-default">

                                    <div class="panel-heading">Categoria</div>
                                    <div class="panel-body">
                                        <c:forEach items="${listCategories}" var="c">
                                            <a href="${pageContext.request.contextPath}/course/showCourseFilter?idCategory=${c.getName()}">${c.getName()}</a><br/>

                                        </c:forEach>

                                    </div>

                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">Provincia</div>
                                    <div class="panel-body">
                                        <c:forEach items="${listProv}" var="p">
                                            <a href="${pageContext.request.contextPath}/course/showCourseFilter?prov=${p}">${p}</a><br/>
                                            
                                        </c:forEach>
                                        
                                    </div>
                                </div>



                            </div>



                        </div>
                        <div class="col-md-10" id="cursos">

                            <ul class="list-group">
                                <c:forEach items="${listCourses}" var="p">
                                    <a href="${pageContext.request.contextPath}/course/describeCourse?id=${p.getCouse_ID()}" class="row list-group-item">
                                        <div class="col-md-10">
                                            <h2 id="curso-tiulo">${p.getName()}</h2>
                                            <h4>${p.getOrganization().getName()}</h4>
                                            <p>${p.getDescription()}</p> 
                                        </div>
                                        <div class="col-md-2" id="curso-panelderecha">
                                            <h5>Precio: $${p.getPrice()}</h5>
                                            <h5>Duración: ${p.getDuration()}</h5>
                                            <h5>Inicio: ${p.getDate()}</h5>
                                            <h5>Lugar: ${p.getLocation()}</h5>

                                        </div>


                                    </a>
                                </c:forEach>
                            </ul>
                        </div>

                    </div>














                </div>
                <div class="col-md-1"></div>
            </div>


            <footer class="footer">
                <%@include file="/resources/maquetacion/footer.jsp" %>
            </footer>
        </div>





    </body>
</html>
