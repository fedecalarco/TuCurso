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
        <title>JSP Page</title>
    </head>
    <body>


        <div class="container-fluid" >

            <header>
                <%@include file="/resources/maquetacion/header.jsp" %>
            </header>

            <div class="row">

                <div class="col-md-1"></div>

                <div class="col-md-10" id="contenido-ppal" >


                    <br/>

                    <h2>Ingrese el curso que desea buscar:</h2>

                    <div class="input-group">
                        <input type="text" class="form-control SearchBar" placeholder="Java EE, La Plata">
                        <span class="input-group-btn">
                            <button class="btn btn-defaul SearchButton" type="button">
                                <span class=" glyphicon glyphicon-search SearchIcon" ></span>
                            </button>
                        </span>
                    </div>
                    <a href=""><h4>Busqueda avanzada</h4></a>
                    <div class="row">
                        <div class="col-md-4"> </div>
                        <div class="col-md-4">

                            <f:form  role="from">

                                <div class="form-group">
                                    <label for="idCat">Categoria: </label><br/>
                                    <select name="idCat" id="idCat" class="form-control">
                                        <c:forEach items="${categories}" var="cat">
                                            <option value="${cat.category_ID}">${cat.getName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="row">

                                    <div class="col-md-4">       
                                        <div class="form-group">
                                            <label for="pais">Pais: </label><br/>
                                            <select name="pais" id="pais" class="form-control">
                                                <c:forEach items="${pais}" var="pais">
                                                    <option value="${pais}">${pais}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="prov">Provincia: </label><br/>
                                            <select name="prov" id="prov" class="form-control">
                                                <c:forEach items="${prov}" var="prov">
                                                    <option value="${prov}">${prov}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="ciudad">Ciudad: </label><br/>
                                            <select name="ciudad" id="ciudad" class="form-control">
                                                <c:forEach items="${ciudad}" var="ciudad">
                                                    <option value=""${ciudad}>${ciudad}</option>
                                                </c:forEach>
                                            </select>
                                        </div>  
                                    </div>

                                </div>

                                <input type="submit" class="btn btn-success" value="Buscar">
                            </f:form>
                        </div>
                        <div class="col-md-4"> </div>

                    </div>


                    <br><br>

                    <div class="row">
                        <h2>Cursos destacados</h2>
                        <div class="col-md-3" >
                            <div id="cursoDestacado">
                                <a>Desarrollo de aplicaciones web en Java</a>
                                <p>Comunidad IT</p>
                                <p>Duración: 3 meses</p>
                                <p>Precio: Gratis!</p>
                            </div>
                        </div>
                        <div class="col-md-3" >
                            <div id="cursoDestacado">
                                <a>Desarrollo de aplicaciones web en Java</a>
                                <p>Comunidad IT</p>
                                <p>Duración: 3 meses</p>
                                <p>Precio: Gratis!</p>
                            </div>
                        </div>
                        <div class="col-md-3" >
                            <div id="cursoDestacado">
                                <a>Desarrollo de aplicaciones web en Java</a>
                                <p>Comunidad IT</p>
                                <p>Duración: 3 meses</p>
                                <p>Precio: Gratis!</p>
                            </div>
                        </div>
                        <div class="col-md-3" >
                            <div id="cursoDestacado">
                                <a>Desarrollo de aplicaciones web en Java</a>
                                <p>Comunidad IT</p>
                                <p>Duración: 3 meses</p>
                                <p>Precio: Gratis!</p>
                            </div>
                        </div>



                    </div>


                    <br><br>
                    <a href="${pageContext.request.contextPath}/course/showCourses">Ver Cursos</a>
                    <a href="${pageContext.request.contextPath}/organization/addOrganization">Agregar Organizacion</a>
                    <a href="${pageContext.request.contextPath}/course/addCourse">Agregar Curso</a>
                    <a href="${pageContext.request.contextPath}/category/addCategory">Agregar Categoria</a>
                </div>


                <div class="col-md-1"></div>

            </div>

            <footer class="navbar navbar-fixed-bottom">
                <div class="row">
                    <div class="col-md-12" id="footer">
                        <a href=""><img src="http://icons.iconarchive.com/icons/martz90/circle/512/fb-icon.png"  height="45" width="45"/></a>
                        <a href=""><img src="http://www.enriquegranados.mx/images/tw.png" height="45" width="45"/></a>
                        <br/>@TuCurso.com.ar
                    </div>
                </div>
            </footer>


        </div>



    </body>
</html>
