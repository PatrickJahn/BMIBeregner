<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome page</title>
        <link rel="stylesheet" type="text/css" href="style.css">

    </head>
    <body>

    <button> Tidligere beregninger </button>
    <h1>BMI Beregner</h1>




    <div class="box">
        <form>
            <input type="hidden" name="taget" value="beregn">
            <label>Vægt </label>
            <input class="field" type="number" placeholder="kg"  name="vægt" value="0">
            <label> Højde </label>
            <input class="field" type="number" placeholder="cm"  name="højde" value="0">

            <input class="button" type="submit" >
        </form>
    </div>



    <%--        Bare lige se I har en ide om hvad vi forslå I ikke gør ! det hedder scpript lets --%>
<%--        <% String error = (String) request.getAttribute( "error");--%>
<%--           if ( error != null) { --%>
<%--               out.println("<H2>Error!!</h2>");--%>
<%--               out.println(error);--%>
<%--           }--%>
<%--        %>--%>

        <c:if test = "${requestScope.error!= null}" >

           <h2>Error ! </h2>
            ${requestScope.error}

        </c:if>
    </body>
</html>
