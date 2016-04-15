<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>
<!DOCTYPE html>
<html>

    <head>
        <meta property="fb:app_id" content="{1399521237016028}" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <style type="text/css"><%@include file="/resources/css/styles.css" %></style>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCryZDZVslynv3KBsJW9D4A_70QplbS3q4&callback=initMap" async defer></script>
        <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>

        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '1399521237016028',
                    xfbml: true,
                    version: 'v2.5'
                });
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>

        <div id="fb-root"></div>
        <script>(function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.5&appId=1399521237016028";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>





        <div class="container-fluid" style="background-color: whitesmoke" >
            <header>
                <%@include file="/resources/maquetacion/header.jsp" %>
            </header>



            <div class="row" style="margin: 0px;padding: 0px">

                <div class="col-md-2"></div>

                <div class="col-md-8"  >


                    <div class="row" style="background-color: white; margin-bottom: 20px; padding: 0px ">
                        <div class="col-md-2" style="padding: 0px;margin-top: 20px;text-align: center">
                            <image src="${pageContext.request.contextPath}/organization/imageDisplay?id=${course.getOrganization().getOrganization_ID()}" class="img-responsive"  height="200" width="200" />
                        </div>
                        <div class="col-md-8">
                            <h2><b>${course.getName()}</b></h2>
                            <a href="${pageContext.request.contextPath}/organization/showOrganization?id=${course.getOrganization().getOrganization_ID()}"><h4>${course.getOrganization().getName()}</h4></a>
                            <p> ${course.getDescriptionShort()} </p>
                        </div>
                        <div class="col-md-2" style="padding: 10px">
                            <br/><br/>
                            <a href="${pageContext.request.contextPath}/user/register" class="btn btn-success btn-lg">Inscribirme!</a>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-9">       
                            <div class="panel-group" >
                                <div class="panel panel-default" style="margin-bottom: 20px">
                                    <div class="panel-heading " style="background-color: white">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a data-toggle="tab" href="#home">Informacion general</a></li>
                                            <li><a data-toggle="tab" href="#contenido">Contenido</a></li>
                                        </ul>


                                    </div>
                                    <div class="panel-body">
                                        <div class="tab-content">
                                            <div id="home" class="tab-pane fade in active">

                                                <h4><b>Sobre el curso</b></h4>
                                                <p>${course.getDescription()}</p>
                                            </div>
                                            <div id="contenido" class="tab-pane fade">
                                                <p>  
                                                ${course.getContent()}
                                                </p>
                                            </div>

                                        </div>



                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-body" style="padding: 0px">                  


                                        <div id="map" style="height:260px; padding: 0px;margin: 0px "></div>


                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-3" style="margin: 0px;padding: 0px">
                            <div class="panel panel-default">
                                <div class="panel-body">                  



                                    <p>&#x2022; Precio: $${course.getPrice()}</p>
                                    <p>&#x2022; Duración: ${course.getDuration()}</p>
                                    <p>&#x2022; Inicio: ${course.getDate()}</p>
                                    <p> &#x2022; Lugar: ${course.getLocation()}</p>
                                    <input id="address" type="text" hidden="" value="${course.getLocation()}"/></div>
                            </div> 

                            <div class="panel panel-default">
                                <div class="panel-heading" style="background-color: white">Calificaciones</div>
                                <div class="panel-body" > 
                                    Rating: 
                                    <img  height="20px" width="20px" src="http://www.clker.com/cliparts/R/i/A/t/X/O/star-orange-md.png"/>   
                                    <img  height="20px" width="20px" src="http://www.clker.com/cliparts/R/i/A/t/X/O/star-orange-md.png"/>   
                                    <img  height="20px" width="20px" src="http://www.clker.com/cliparts/R/i/A/t/X/O/star-orange-md.png"/>   

                                </div> 
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading" style="background-color: white">Profesores</div>
                                <div class="panel-body">                  
                                    <img class="img-circle" height="50" width="50" src="https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAMhAAAAJDhiZDY5ZWEyLWZhYWQtNGZiMC1hN2NjLTA5YzljNDZhMmY1Nw.jpg"/><a href="#"> Federico Calarco</a>
                                </div> 
                            </div>
                        </div>



                        <div class="row" >

                            <div class="col-md-12" style="text-align: center">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <h2>Comentarios:</h2>
                                        <div class="fb-comments" data-href="http://localhost:8080/TuCurso/course/describeCourse?id=${course.getCouse_ID()}" data-numposts="5"></div>

                                    </div>
                                </div>

                            </div>

                        </div>      






                    </div> 






                </div>






                <div class="col-md-2"></div>



            </div>






            <footer class="footer">
                <%@include file="/resources/maquetacion/footer.jsp" %>
            </footer>

        </div>

        <script type="text/javascript">
            function initMap() {
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 13,
                    center: {lat: -34.921086, lng: -57.954522}
                });
                var geocoder = new google.maps.Geocoder();

                //                document.getElementById('submit').addEventListener('click', function () {
                //                  geocodeAddress(geocoder, map);
                //
                //                });
                geocodeAddress(geocoder, map);
            }

            function geocodeAddress(geocoder, resultsMap) {
                var address = document.getElementById('address').value;
                geocoder.geocode({'address': address}, function (results, status) {
                    if (status === google.maps.GeocoderStatus.OK) {
                        resultsMap.setCenter(results[0].geometry.location);
                        var marker = new google.maps.Marker({
                            map: resultsMap,
                            position: results[0].geometry.location
                        });
                    } else {
                        alert('Geocode was not successful for the following reason: ' + status);
                    }
                });
            }
        </script>

    </body>
</html>
