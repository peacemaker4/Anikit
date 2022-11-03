<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Anikit</title>

    <%@include file="components/fonts.jsp"%>
    <%@include file="components/stylesheets-2.jsp"%>
    <%@include file="components/stylesheets.jsp"%>

  </head>

<body>

  <%@include file="components/navbar.jsp"%>

  <body>
	
    <div class="limiter">
      <div class="container-login100">
        <div class="wrap-login100">
          <form method="post" action="register" class="login100-form validate-form">
            <span class="login100-form-title p-b-26">
              Welcome
            </span>

            <%
            if(request.getParameter("error")!=null && request.getParameter("error").equals("1")){
            %>
            <div class="alert alert-danger" role="alert">
              User with this email already registered
            </div>
            <%
            } else if(request.getParameter("error")!=null && request.getParameter("error").equals("2")){
            %>
            <div class="alert alert-warning" role="alert">
              Wrong email or password
            </div>
            <%
            } else if(request.getParameter("success")!=null){
            %>
            <div class="alert alert-success" role="alert">
              Successfully registered
            </div>
            <% } %>

            <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
              <input class="input100" type="text" name="email">
              <span class="focus-input100" data-placeholder="Email"></span>
            </div>
  
            <div class="wrap-input100 validate-input" data-validate="Enter password">
<%--              <span class="btn-show-pass">--%>
<%--                <i class="zmdi zmdi-eye"></i>--%>
<%--              </span>--%>
              <input class="input100" type="password" name="password">
              <span class="focus-input100" data-placeholder="Password"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate="Confirm password">
<%--              <span class="btn-show-pass">--%>
<%--                <i class="zmdi zmdi-eye"></i>--%>
<%--              </span>--%>
              <input class="input100" type="password" name="confirm_password">
              <span class="focus-input100" data-placeholder="Confirm password"></span>
            </div>
  
            <div class="container-login100-form-btn">
              <div class="wrap-login100-form-btn">
                <div class="login100-form-bgbtn"></div>
                <button class="login100-form-btn" type="submit">
                  Register
                </button>
              </div>
            </div>
  
            <div class="text-center p-t-115">
              <span class="txt1">
                Already have an account?
              </span>
  
              <a class="txt2" href="login">
                Sign In
              </a>
            </div>
          </form>
        </div>
      </div>
    </div>
    
  
    <div id="dropDownSelect1"></div>

    <%@include file="components/scripts-2.jsp"%>
  
  </body>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2022 ANIKIT. All Rights Reserved. 
        </div>
      </div>
    </div>
  </footer>


  <%@include file="components/scripts.jsp"%>

</body>
</html>