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
        <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9aVV02GeAnrhc7_LHXENBE571xUFZtWQ&libraries=places"></script>

        <title>Tu curso</title>
    </head>
    <body>

        <script>
            $(document).ready(function () {
                $("#pais").change(function () {
                    var pais = $(this).val();
                    // Si selecciono pais 
                    if (pais != "-") {
                        $("#prov").find('option').remove().end().append('<option value="-">Cargando provincias</option>');
                        $.ajax({
                            type: "POST",
                            url: "${pageContext.request.contextPath}/ajax/cargarProv",
                            datatype: 'json',
                            data: {pais: pais},
                            success: function (prov) {
                                mostrarProv(prov);
                            },
                            error: function (e) {
                                alert('Error 2: ' + e);
                            }
                        });
                    } else {
                        $("#prov").attr("disabled", "disabled");
                        $("#ciudad").attr("disabled", "disabled");
                        $("#prov").find('option').remove();
                        $("#ciudad").find('option').remove();
                    }


                });
                function mostrarProv(data) {
                    $("#prov").find('option').remove();
                    $("#prov").append('<option value="-">All</option>');
                    for (var i = 0, len = data.length; i < len; ++i) {
                        var aux = data[i];
                        $("#prov").append("<option value=\"" + aux + "\">" + aux + "</option>");
                    }
                    $("#prov").removeAttr("disabled");
                }


                // Ciudad

                $("#prov").change(function () {

                    var prov = $(this).val();
                    // Si selecciono pais
                    if (prov != "-") {
                        $("#ciudad").find('option').remove().end().append('<option value="-">Cargando ciudades</option>');

                        $.ajax({
                            type: "POST",
                            url: "${pageContext.request.contextPath}/ajax/cargarCiudad",
                            datatype: 'json',
                            data: {prov: prov},
                            success: function (ciudad) {
                                mostrarCiudad(ciudad);
                            },
                            error: function (e) {
                                alert('Error 3: ' + e);
                            }
                        });

                    } else {
                        $("#ciudad").attr("disabled", "disabled");
                        $("#ciudad").find('option').remove();
                    }


                });

                function mostrarCiudad(data) {
                    $("#ciudad").find('option').remove();
                    for (var i = 0, len = data.length; i < len; ++i) {
                        var aux = data[i];
                        $("#ciudad").append("<option value=\"" + aux + "\">" + aux + "</option>");
                    }
                    $("#ciudad").removeAttr("disabled");
                }
            });

        </script>



        <div class="container-fluid" style="background-image: url('http://www.twitterevolutions.com/bgs/blackboard-twitter-background.jpg');background-size: 100% 100%; height: 100%">

            <header>
                <%@include file="/resources/maquetacion/header.jsp" %>
            </header>

            <div class="row">

                <div class="col-md-1">



                </div>

                <div class="col-md-10" >


                    <br/>

                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
















                        </div>
                        <div class="col-md-2"></div>

                    </div>




                    <div class="row">
                        <div class="col-md-3"> </div>
                        <div class="col-md-6">

                            <div class="row" style="background-color: whitesmoke">
                                <f:form  action="${pageContext.request.contextPath}/course/showCourses/" role="form">
                                    <div class="col-md-5">   
                                        <div class="form-group">
                                            <label> <h3>¿Que curso buscas?</h3> </label>
                                            <input type="text" name="seachTxt" class="form-control SearchBar" placeholder="Nombre, Categoria">
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group" >
                                            <label><h3> ¿Donde?</h3> </label>
                                            <input  id="pac-input" class="form-control" type="text" name="location" placeholder="Ciudad o Provincia">  
                                        </div>

                                    </div>
                                    <div class="col-md-2"><br/><br/><br/>  <input type="submit" class="btn btn-success btn-md" value="Buscar"/></div>
                                    </f:form>

                            </div>





                            <%-- 
                            <f:form  action="${pageContext.request.contextPath}/course/showCourses/" role="form">

                                <div class="form-group">

                                    <input type="text" name="seachTxt" class="form-control SearchBar" placeholder="Java EE, La Plata">



                                </div>

                                <div class="form-group">
                                    <label for="category">Categoria: </label><br/>
                                    <select name="category" id="category" class="form-control">
                                        <option value="">All</option>
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
                                                <option value="-">All</option>
                                                <c:forEach items="${pais}" var="pais">
                                                    <option value ="${pais}">${pais}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="prov">Provincia: </label><br/>
                                            <select name="prov" id="prov" class="form-control" disabled="disabled">
                                                <option value="-"></option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="ciudad">Ciudad: </label><br/>
                                            <select name="city" id="ciudad" class="form-control" disabled="disabled">
                                                <option value="-" disabled="disabled"></option>
                                            </select>
                                        </div>  
                                    </div>

                                </div>

                                <input type="submit" class="btn btn-success" value="Buscar">
                            </f:form>
                            
                            --%>


                        </div>
                        <div class="col-md-3"> </div>

                    </div>


                    <br><br>

                    <!--                   <div class="row">
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
                    
                    
                    
                                        </div>-->


                    <br><br>
                    
                </div>


                <div class="col-md-1"></div>

            </div>

            <footer class="navbar navbar-fixed-bottom">
                <div class="row">
                    <div class="col-md-12" id="footer">
                        <a href=""><img src="http://icons.iconarchive.com/icons/martz90/circle/512/fb-icon.png"  height="25" width="25"/></a>
                        <a href=""><img src="http://www.enriquegranados.mx/images/tw.png" height="25" width="25"/></a>
                        <br/>@TuCurso.com.ar
                    </div>
                </div>
            </footer>


        </div>



        <script>
            var input = (document.getElementById('pac-input'));
            var autocomplete = new google.maps.places.Autocomplete(input);
        </script>


    </body>
</html>
