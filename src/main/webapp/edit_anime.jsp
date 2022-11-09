<%@ page import="com.se2115.anikit.models.anime.Anime" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add anime</title>
    <%@include file="components/stylesheets.jsp"%>
</head>
<body>
<div>
    <%@include file="components/navbar.jsp"%>

    <% Anime anime = (Anime) request.getAttribute("anime"); %>
    <div class="card mt-3" >
        <div class="card-header text-primary text-center p-4">
            <h3>Add Anime</h3>
        </div>

        <%
            if(request.getParameter("error")!=null){
        %>
        <div class="alert alert-danger mt-3" role="alert">
            Error happened
        </div>
        <%
        } else if(request.getParameter("success")!=null){
        %>
        <div class="alert alert-success mt-3" role="alert">
            Successfully updated
        </div>
        <% } %>
        <form method="post" action="anime_edit">
        <div class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "main-banner" : "dark-banner"%> wow fadeIn" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class=" col-lg-6 align-self-center">
                                <div class="left-content show-up header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <h6 class="text-warning">Update anime</h6>
                                            <input name="anime_id" value="<%=anime.getId()%>" type="text" hidden>

                                            <div class="input-group mb-3">
                                                <input name="title" value="<%=anime.getTitle()%>" type="text" class="form-control bg-transparent border border-warning rounded-pill" placeholder="Title" aria-label="Title" required>
                                            </div>
                                            <!-- Description -->
                                            <div class="mb-3">
                                                <label for="descriptionTextarea" class="form-label">Description</label>
                                                <textarea name="description" class="form-control border border-warning rounded" id="descriptionTextarea" rows="3" maxlength="250"><%=anime.getDescription()%></textarea>
                                            </div>
                                            <!-- State -->
                                            <div class="input-group mb-3">
                                                <select class="form-select border border-warning rounded-pill" name="state" aria-label="State select">
                                                    <% if (anime.getState().equals("Announced")) { %>
                                                        <option selected>Announced</option>
                                                        <option>Ongoing</option>
                                                        <option>Finished</option>
                                                    <% } else if(anime.getState().equals("Ongoing")) { %>
                                                        <option>Announced</option>
                                                        <option selected>Ongoing</option>
                                                        <option>Finished</option>
                                                    <% } else { %>
                                                        <option>Announced</option>
                                                        <option>Ongoing</option>
                                                        <option selected>Finished</option>
                                                    <% } %>
                                                </select>
                                            </div>
                                            <!-- Cover -->
                                            <div class="input-group mb-3">
                                                <input name="cover" value="<%=anime.getCover()%>" id="cover" type="text" class="form-control bg-transparent border border-warning  rounded-pill" placeholder="Cover" aria-label="Cover">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <button type="submit" class="mb-3 btn btn-warning w-50 rounded-pill">Update <i class="fa-solid fa-check"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                                    <% if(anime.getCover().isEmpty()) {%>
                                        <img id="img_cover" src="assets/images/portfolio-01.jpg" class="card-img-top" alt="">
                                    <% } else  {%>
                                        <img id="img_cover" class="card-img-top" src="<%=anime.getCover()%>" alt="">
                                    <%}%>
                                </div>
                            </div>
                            <script>
                                $(function(){
                                $('#cover').change(function(){
                                var input = this;
                                var url = $(this).val();
                                var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
                                if (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")
                                {
                                    $('#img_cover').attr('src', url);
                                }
                                else
                                {
                                    $('#img_cover').attr('src', 'assets/images/about-dec-v3.png');
                                }
                                });

                                });
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>


    </div>
</div>

<%@include file="components/scripts.jsp"%>
</body>
</html>