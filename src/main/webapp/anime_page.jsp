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

    <div class="ml-5">
        <h1>Title: <%=anime.getTitle()%></h1>
        <p>Description: <%=anime.getDescription()%></p>
        <p>State: <%=anime.getState()%></p>
    </div>


</div>

</body>
</html>