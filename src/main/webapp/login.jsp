<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <%@include file="components/bootstrap.jsp"%>
    <%@include file="components/stylesheets.jsp"%>
</head>
<body class="bg-dark">
<div>
    <%@include file="components/navbar.jsp"%>

    <div class="card bg-black mt-3" >
        <div class="card-header text-primary text-center p-4">
            <h3>Login</h3>
        </div>

        <%
            if(request.getParameter("error")!=null && request.getParameter("error").equals("1")){
        %>
        <div class="alert alert-danger" role="alert">
            User is not registered
        </div>
        <%
        } else if(request.getParameter("error")!=null && request.getParameter("error").equals("2")){
        %>
        <div class="alert alert-warning" role="alert">
            Wrong email or password
        </div>
        <% } %>

        <div class="card-body">
            <!-- Login form -->
            <form method="post" action="login">
                <!-- Email -->
                <div class="input-group mb-3">
                    <input  name="email" type="text" class="form-control bg-transparent border border-primary" placeholder="Email" aria-label="Email" aria-describedby="email-input" required>
                </div>
                <!-- Password -->
                <div class="input-group mb-3">
                    <input name="password" type="password" class="form-control bg-transparent border border-primary" placeholder="Password" aria-label="Password" aria-describedby="password-input" minlength="8" required>
                </div>
                <!-- Login button -->
                <div class="text-center">
                    <button type="submit" class="mb-3 btn btn-primary w-50 text-black">Login</button>
                </div>
            </form>

        </div>

    </div>
</div>

</body>
</html>