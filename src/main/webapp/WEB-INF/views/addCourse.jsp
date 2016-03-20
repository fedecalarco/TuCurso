<%-- 
    Document   : addCourse
    Created on : 19-mar-2016, 16:58:03
    Author     : fedec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/resources/maquetacion/taglibs.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div>

            <f:form action="${pageContext.request.contextPath}/course/addCourse" modelAttribute="Course">

                <label for="name">Nombre: </label><br/>
                <input type="text" name="name" id="name" value="" class="input" required autofocus/>
                <br/><br/>

                <label for="idCat">Categoria: </label><br/>
                <select name="idCat" id="idCat">
                    <c:forEach items="${categories}" var="cat">
                        <option value="${cat.category_ID}">${cat.getName()}</option>
                    </c:forEach>
                </select>
                <br/><br/>


                <label for="idOrg">Organizacion: </label><br/>
                <select name="idOrg" id="idOrg">
                    <c:forEach items="${organizations}" var="org">
                        <option value="${org.organization_ID}">${org.getName()}</option>
                    </c:forEach>
                </select>
                <br/><br/>



                <label for="description">Description: </label><br/>
                <input type="comment" name="description" id="description" value="" class="input" required autofocus/>
                <br/><br/>

                <label for="price">Price: </label><br/>
                <input type="text" name="price" id="price" value="" class="input" required autofocus/>
                <br/><br/>

                <label for="duration">Duracion: </label><br/>
                <input type="text" name="duration" id="duration" value="" class="input" required autofocus/>
                <br/><br/>

                <label for="date">Fecha de inicio: </label><br/>
                <input type="text" name="date" id="date" value="" class="input" required autofocus/>
                <br/><br/>

                <label for="location">Lugar: </label><br/>
                <input type="text" name="location" id="location" value="" class="input" required autofocus/>
                <br/><br/>

                <br/><br/>
                <a href="${pageContext.request.contextPath}/" class="btn btn-warning btn-lg" role="button">Cancelar</a> 
                <input type="submit" id="bEnviar" class="btn btn-success btn-lg" value="Guardar"/>

            </f:form>



        </div>



    </body>
</html>
