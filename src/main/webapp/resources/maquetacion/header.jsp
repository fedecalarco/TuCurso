<div class="row">
    <div class="col-md-12" id="barraSuperior">
        <!--        <img src="http://www.wormholeit.com/images/logo-2015.png"/>-->
        <a href="${pageContext.request.contextPath}/"><h2 style="padding: 0px; margin: 0px; color: white">TU CURSO</h2></a>

    </div>
</div>
<div class="row" id="barraSuperior2">
    <div class="col-md-6" style="text-align: left">
        <sec:authorize access="hasRole('USER_PROVIDER')">
            
            <h5> Bienvenido <sec:authentication property="principal.username"/></h5>
        </sec:authorize>

    </div>
    <div class="col-md-6" >
        <a href="${pageContext.request.contextPath}/centroEducativo/" class="btn btn-success btn-md" role="button">Administrar cursos</a>

        <sec:authorize access="hasRole('USER_PROVIDER')">

            <a class="btn btn-danger btn-md" href="<c:url value="/logout" />" >Logout</a>
        </sec:authorize>



        <%--        <a href="${pageContext.request.contextPath}/course/addCourse" class="btn btn-danger btn-md" role="button">Agregar curso!</a>--%>
    </div>
</div>