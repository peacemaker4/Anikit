<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Anikit</title>
    <%@include file="components/fonts.jsp"%>
    <%@include file="components/stylesheets.jsp"%>
  </head>

  <body class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "bg-light" : "bg-black"%>">

  <%@include file="components/navbar.jsp"%>

  <div class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "main-banner" : "dark-banner"%> wow" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6 align-self-center">
              <div class="left-content show-up header-text wow" data-wow-duration="1s" data-wow-delay="1s">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="container" id="buttons">
                      <h3>Control button</h3>
                      <button class="btn btn-danger" onclick="enable()" id="btn">Disable</button>
                      <button class="btn btn-success" onclick="disable()" id="btn">Enable</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



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