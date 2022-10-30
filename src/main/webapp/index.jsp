<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <%@include file="components/bootstrap.jsp"%>
    <%@include file="components/stylesheets.jsp"%>
</head>
<body>
<div class="">
    <%@include file="components/navbar.jsp"%>

    <div class="d-flex justify-content-center mt-5">
        <h1 class="h1">Welcome to Anikit</h1>
    </div>

    <div class="alert alert-primary mt-3" role="alert">
        App is under development!
    </div>

    <img src="static/images/bg-1.jpg" class="img-fluid " alt="...">

</div>


</body>
</html>