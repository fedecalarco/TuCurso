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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCryZDZVslynv3KBsJW9D4A_70QplbS3q4&callback=initMap"
        async defer></script>
        <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
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





        <div class="container-fluid" >
            <header>
                <%@include file="/resources/maquetacion/header.jsp" %>
            </header>


            <div class="row">

                <div class="col-md-1"></div>

                <div class="col-md-10" id="contenido-ppal" >

                    <h1>${course.getName()}</h1>
                    <a href="${pageContext.request.contextPath}/organization/showOrganization?id=${course.getOrganization().getOrganization_ID()}"><h4>${course.getOrganization().getName()}</h4></a>
                    <h3>${course.getDescription()}</h3>
                    <h4>Precio: $${course.getPrice()}</h4>
                    <h4>Duración: ${course.getDuration()}</h4>
                    <h4>Inicio: ${course.getDate()}</h4>
                    <h4>Lugar: ${course.getLocation()}</h4>
                    <input id="address" type="text" hidden="" value="${course.getLocation()}"/>

                    <div class="row">
                        <div class="col-m4"></div>
                        <div class="col-m4">
                            <div id="map" style="height:300px;width: 300px"></div>

                        </div>
                        <div class="col-m4"></div>
                    </div>
                </div>



                <div class="col-md-1"></div>



            </div>

            <div class="row">
                <div class="col-md-1"></div>  
                <div class="col-md-10" style="text-align: center">
                    <h2>Comentarios:</h2>
                    <div class="fb-comments" data-href="http://localhost:8080/TuCurso/course/describeCourse?id=${course.getCouse_ID()}" data-numposts="5"></div>
                </div>
                <div class="col-md-1"></div>
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
