<%-- 
    Document   : addCourse
    Created on : 19-mar-2016, 16:58:03
    Author     : fedec
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <!--              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9aVV02GeAnrhc7_LHXENBE571xUFZtWQ&libraries=places"></script>
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

                    <h1>Registre su curso:</h1>
                    <div>

                        <f:form action="${pageContext.request.contextPath}/course/addCourse" modelAttribute="Course" role="form">

                            <div class="form-group">
                                <label for="name">Nombre: </label><br/>
                                <input type="text" name="name" id="name" class="form-control" required autofocus/>
                            </div>

                            <div class="form-group">
                                <label for="idCat">Categoria: </label><br/>
                                <select name="idCat" id="idCat" class="form-control">
                                    <c:forEach items="${categories}" var="cat">
                                        <option value="${cat.category_ID}">${cat.getName()}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="idOrg">Organizacion: </label><br/>
                                <select name="idOrg" id="idOrg" class="form-control">
                                    <c:forEach items="${organizations}" var="org">
                                        <option value="${org.organization_ID}">${org.getName()}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="description">Description: </label><br/>
                                <textarea name="description" class="form-control" rows="5" id="description" placeholder="Agregue una descripcion del curso" required></textarea>
                            </div>

                            <div class="form-group">
                                <label for="location">Lugar: </label><br/>
                                <input id="pac-input" class="form-control" type="text" name="location" placeholder="Ingrese la ubicacion" required="">
                            </div>

                            <div class="form-group">
                                <label for="price">Price: </label><br/>
                                <input type="text" name="price" id="price" value="0.0" class="form-control" required/>
                            </div> 

                            <div class="form-group">
                                <label for="duration">Duracion: </label><br/>
                                <input type="text" name="duration" id="duration" value="" class="form-control" required/>
                            </div>

                            <div class="form-group">
                                <label for="date">Fecha de inicio: </label><br/>
                                <input type="date" name="date" id="date" value="" class="form-control" required />
                            </div>



                            <div class="form-group">
                                <a href="${pageContext.request.contextPath}/" class="btn btn-danger" role="button">Cancelar</a> 
                                <input type="submit" id="bEnviar" class="btn btn-success " value="Guardar"/>
                            </div>
                        </f:form>



                    </div>

                </div>

                <div class="col-md-1"></div>

            </div>

            <footer class="footer">
                <%@include file="/resources/maquetacion/footer.jsp" %>
            </footer>

        </div>




        <script>
            var input = (document.getElementById('pac-input'));
            var autocomplete = new google.maps.places.Autocomplete(input);
        </script>

    </body>
</html>
