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
    </body>
</html>
