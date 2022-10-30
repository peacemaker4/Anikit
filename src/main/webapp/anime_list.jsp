<%@ page import="java.util.ArrayList" %>
<%@ page import="com.se2115.anikit.models.anime.Anime" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Anime list</title>
    <%@include file="components/bootstrap.jsp"%>
    <%@include file="components/stylesheets.jsp"%>
</head>
<body>
<div class="bg-dark">
    <%@include file="components/navbar.jsp"%>
    <% List<Object> list = (ArrayList<Object>) request.getAttribute("list"); %>
        <% if (list.isEmpty()) {%>
            <h1 class="mt-3">Anime list is empty</h1>
        <% } else {%>

            <% for (Object ob: list) {%>
            <div class="d-flex justify-content-center pb-3">
            <% Anime anime = (Anime)ob; %>
                <% if (anime.getState().equals("Announced")){ %>
                    <div class="card mt-3 mb-3 border border-primary" style="width: 25rem;">
                            <% if(anime.getCover().isEmpty()) {%>
                                <img src="static/images/bg-1.jpg" class="card-img-top" alt="picture">
                            <% } else  {%>
                                <img src="<%=anime.getCover()%>" style="object-fit: cover; object-position: 25% 25%;" height="350px" class="card-img-top" alt="picture">
                            <%}%>
                            <div class="card-body">
                                <a href="anime?anime_id=<%=anime.getId()%>" style="text-decoration: none;">
                                    <h5 class="card-title text-primary"><%=anime.getId()%>. <%=anime.getTitle()%></h5>
                                </a>
                                <p class="card-text"><%=anime.getDescription()%></p>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item text-primary">
                                    <%=anime.getState()%>
                                </li>

                            <% } else if (anime.getState().equals("Ongoing")) { %>
                                <div class="card mt-3 border border-danger" style="width: 25rem;">
                                <% if(anime.getCover().isEmpty()) {%>
                                <img src="static/images/bg-1.jpg" class="card-img-top" alt="picture">
                                <% } else  {%>
                                <img src="<%=anime.getCover()%>" style="object-fit: cover; object-position: 25% 25%;" height="350px" class="card-img-top" alt="picture">
                                <%}%>
                                <div class="card-body">
                                    <a href="anime?anime_id=<%=anime.getId()%>" style="text-decoration: none;">
                                        <h5 class="card-title text-danger"><%=anime.getId()%>. <%=anime.getTitle()%></h5>
                                    </a>
                                    <p class="card-text"><%=anime.getDescription()%></p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item text-danger">
                                        <%=anime.getState()%>
                                    </li>
                                <% } else { %>
                                <div class="card mt-3 border border-success" style="width: 25rem;">
                                    <% if(anime.getCover().isEmpty()) {%>
                                    <img src="static/images/bg-1.jpg" class="card-img-top" alt="picture">
                                    <% } else  {%>
                                    <img src="<%=anime.getCover()%>" style="object-fit: cover; object-position: 25% 25%;" height="350px" class="card-img-top" alt="picture">
                                    <%}%>
                                    <div class="card-body">
                                        <a href="anime?anime_id=<%=anime.getId()%>" style="text-decoration: none;">
                                            <h5 class="card-title text-success"><%=anime.getId()%>. <%=anime.getTitle()%></h5>
                                        </a>
                                        <p class="card-text"><%=anime.getDescription()%></p>
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item text-success">
                                            <%=anime.getState()%>
                                        </li>

                                    <% } %>
                                        <% if (request.getSession().getAttribute("user_id") != null) {%>
                                        <li class="list-group-item">
                                            <form method="post" action="subscribe">
                                                <input name="anime_id" value="<%=anime.getId()%>" hidden>
                                                <% if(((ArrayList<Integer>) request.getAttribute("list_sub")).contains(anime.getId())){ %>
                                                    <div class="btn btn-success">
                                                        Subscribed ✓
                                                    </div>
                                                <% } else {%>
                                                    <button class="btn btn-danger">
                                                        Subscribe +
                                                    </button>
                                                <% } %>
                                            </form>
                                        </li>
                                        <%}%>
                                    </ul>
                                </div>


                            </div>

                            <% }%>
        <%}%>


</div>

</body>
</html>