<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.se2115.anikit.models.anime.Anime" %>
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

  <body class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "bg-light" : "bg-dark"%>">

  <%@include file="components/navbar.jsp"%>

  <div id="portfolio" class="our-portfolio section">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.3s">
            <h6>Anime</h6>
            <h4>List <em>To Watch</em></h4>
            <div class="line-dec"></div>
          </div>
        </div>
      </div>
    </div>
    <% List<Object> list = (ArrayList<Object>) request.getAttribute("list"); %>
    <% if (list.isEmpty()) {%>
    <h1 class="mt-3">Anime list is empty</h1>
    <% } else {%>
    <div class="container-fluid wow fadeIn" data-wow-duration="1s" data-wow-delay="0.7s">
      <div class="row row-cols-1 row-cols-md-6 g-9">
        <% for (Object ob: list) {%>
          <% Anime anime = (Anime)ob; %>
          <div class="col">
            <div class="card">
              <% if(anime.getCover().isEmpty()) {%>
                <img src="assets/images/portfolio-01.jpg" class="card-img-top" alt="...">
              <% } else  {%>
                <img src="<%=anime.getCover()%>" class="card-img-top" alt="...">
              <%}%>
              <div class="card-body">
                <h5 class="card-title"><%=anime.getTitle()%></h5>
                <p class="card-text text-truncate"><%=anime.getDescription()%></p>
              </div>
              <% if (request.getSession().getAttribute("user_id") != null) {%>
              <li class="list-group-item">
                <form method="post" action="subscribe">
                  <input name="anime_id" value="<%=anime.getId()%>" hidden>
                  <% if(((ArrayList<Integer>) request.getAttribute("list_sub")).contains(anime.getId())){ %>
                  <div class="btn btn-success rounded-pill">
                    Subscribed
                  </div>
                  <% } else {%>
                  <button class="btn btn-danger rounded-pill">
                    Subscribe +
                  </button>
                  <% } %>
                </form>
              </li>
              <%}%>
            </div>
          </div>
        <%}%>

      </div>
    </div>
    <%}%>
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