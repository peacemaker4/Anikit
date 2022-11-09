<%@ page import="java.util.ArrayList" %>
<%@ page import="com.se2115.anikit.models.anime.Anime" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Anime</title>
    <%@include file="components/stylesheets.jsp"%>
</head>
<body>
<div>
    <%@include file="components/navbar.jsp"%>

    <% Anime anime = (Anime) request.getAttribute("anime"); %>

    <div class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "main-banner" : "dark-banner"%> wow fadeIn" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                                <% if(anime.getCover().isEmpty()) {%>
                                <img src="assets/images/portfolio-01.jpg" class="card-img-top" alt="...">
                                <% } else  {%>
                                <img src="<%=anime.getCover()%>" class="card-img-top rounded" alt="...">
                                <%}%>
                            </div>
                        </div>

                        <div class=" col-lg-6 align-self-center">
                            <div class="left-content show-up header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <% if (anime.getState().equals("Ongoing")) { %>
                                            <span class="badge rounded-pill bg-danger"><%=anime.getState()%></span>
                                            <% } else if(anime.getState().equals("Announced")) { %>
                                            <span class="badge rounded-pill bg-primary"><%=anime.getState()%></span>
                                            <% } else { %>
                                            <span class="badge rounded-pill bg-success"><%=anime.getState()%></span>
                                            <%}%>
                                        </div>
                                        <h6 class="text-primary"><%=anime.getTitle()%></h6>
                                        <!-- Description -->
                                        <div class="mb-3">
                                            <span class="text-muted">Info: </span>
                                            <p class="text-black"><%=anime.getDescription()%></p>
                                        </div>
                                        <% if (request.getSession().getAttribute("user_id") != null) {%>
                                            <div class="mb-3">
                                                        <% if(((ArrayList<Integer>) request.getAttribute("list_sub")).contains(anime.getId())){ %>
                                                            <form method="post" action="unsubscribe">
                                                                <input name="anime_id" value="<%=anime.getId()%>" hidden>

                                                                <button class="btn btn-danger rounded text-light mb-3">
                                                                        Subscribed <i class="fa-solid fa-check"></i>
                                                                </button>
                                                            </form>
                                                        <% } else {%>
                                                            <form method="post" action="subscribe">
                                                                <input name="anime_id" value="<%=anime.getId()%>" hidden>

                                                                <button class="btn btn-outline-danger rounded mb-3">
                                                                        Subscribe <i class="fa-solid fa-plus"></i>
                                                                    </button>
                                                            </form>
                                                    <% } %>
                                            </div>
                                            <hr class="text-muted">
                                            <% if(Integer.toString(anime.getUser_id()).equals(request.getSession().getAttribute("user_id").toString())){ %>
                                                <div class="mb-3">
                                                    <a href="anime_edit?anime_id=<%=anime.getId()%>" class="btn btn-warning">
                                                        Edit <i class="fa-solid fa-pen-to-square"></i>
                                                    </a>
                                                    <a href="anime_delete?anime_id=<%=anime.getId()%>" class="btn btn-outline-danger">
                                                        Delete <i class="fa-solid fa-trash"></i>
                                                    </a>
                                                </div>
                                            <%}%>
                                        <%}%>
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

</body>
</html>