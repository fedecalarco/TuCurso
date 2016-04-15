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
        <title>TuCurso</title>
    </head>
    <body>

        <div class="container-fluid" style="background-color: whitesmoke">
            <header>
                <%@include file="/resources/maquetacion/header.jsp" %>
            </header>
            <div class="row">

                <div class="col-md-2"></div>

                <div class="col-md-8"  style="background-color: white;margin: 20px ">

                    <h1>Actualizar curso:</h1><hr>
                    <div>

                        <f:form action="${pageContext.request.contextPath}/course/update" modelAttribute="Course" role="form">

                            <input type="hidden" name="couse_ID" value="${course.getCouse_ID()}" >
                            
                            <div class="form-group">
                                <label for="name">Nombre: </label><br/>
                                <input type="text" name="name" id="name" class="form-control" value="${course.getName()}" required autofocus/>
                            </div>

                            <div class="form-group">
                                <label for="idCat">Categoria: </label><br/>
                                <select name="idCat" id="idCat" class="form-control">
                                    <c:forEach items="${categories}" var="cat">
                                        <option value="${cat.category_ID}">${cat.getName()}</option>
                                    </c:forEach>
                                </select>
                                <a href="${pageContext.request.contextPath}/category/addCategory">Agregar Categoria</a>
                            </div>


                            <input type="hidden" name="idOrg" value="${session_user_provider.id}"/>


                            <div class="form-group">
                                <label for="descriptionShort">Resumen: </label><br/>
                                <textarea name="descriptionShort" class="form-control" rows="2" id="descriptionShort" maxlength="255" placeholder="Max 255 caracteres" required>${course.getDescriptionShort()}</textarea>
                            </div>


                            <div class="form-group">
                                <label for="description">Description: </label><br/>
                                <textarea name="description" class="form-control" rows="5" id="description" placeholder="Agregue una descripcion del curso" required>${course.getDescription()}</textarea>
                            </div>


                            <div class="form-group">
                                <label for="content">Contenidos principales: </label><br/>
                                <textarea name="content" class="form-control" rows="5" id="content" placeholder="Temario del curso" required>${course.getContent()}</textarea>
                            </div>


                            <div class="form-group">
                                <label for="location">Lugar: </label><br/>
                                <input id="pac-input" class="form-control" type="text" name="location" placeholder="Ingrese la ubicacion" value="${course.getLocation()}" required="">
                            </div>

                            <div class="form-group">
                                <label for="price">Precio: </label><br/>
                                <input type="text" name="price" id="price" class="form-control" value="${course.getPrice()}" required/>
                            </div> 

                            <div class="form-group">
                                <label for="duration">Duracion: </label><br/>
                                <input type="text" name="duration" id="duration" value="${course.getDuration()}" class="form-control" placeholder="3 meses" required/>
                            </div>

                            <div class="form-group">
                                <label for="date">Fecha de inicio: </label><br/>
                                <input type="date" name="date" id="date" class="form-control" value="${course.getDate()}" required />
                            </div>



                            <div class="form-group" style="text-align: center">
                                <a href="${pageContext.request.contextPath}/centroEducativo/" class="btn btn-danger" role="button">Cancelar</a> 
                                <input type="submit" id="bEnviar" class="btn btn-success " value="Guardar"/>
                            </div>
                        </f:form>



                    </div>

                </div>

                <div class="col-md-2"></div>

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

