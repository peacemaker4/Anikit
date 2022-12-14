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
            Successfully added
        </div>
        <% } %>
        <form method="post" action="add_anime">
        <div class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "main-banner" : "dark-banner"%> wow fadeIn" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class=" col-lg-6 align-self-center">
                                <div class="left-content show-up header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <h6 class="text-primary">Add anime</h6>
                                            <div class="input-group mb-3">
                                                <input name="title" type="text" class="form-control bg-transparent border border-primary rounded-pill" placeholder="Title" aria-label="Title" required>
                                            </div>
                                            <!-- Description -->
                                            <div class="mb-3">
                                                <label for="descriptionTextarea" class="form-label">Description</label>
                                                <textarea name="description" class="form-control border border-primary rounded" id="descriptionTextarea" rows="3" maxlength="250"></textarea>
                                            </div>
                                            <!-- State -->
                                            <div class="input-group mb-3">
                                                <select class="form-select border border-primary rounded-pill" name="state" aria-label="State select">
                                                    <option selected>Announced</option>
                                                    <option>Ongoing</option>
                                                    <option>Finished</option>
                                                </select>
                                            </div>
                                            <!-- Cover -->
                                            <div class="input-group mb-3">
                                                <input name="cover" id="cover" type="text" class="form-control bg-transparent border border-primary  rounded-pill" placeholder="Cover" aria-label="Cover">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <button type="submit" class="mb-3 btn btn-outline-primary w-50 rounded-pill">Add <i class="fa-solid fa-plus"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                                    <img id="img_cover" class="card-img-top" src="assets/images/about-dec-v3.png" alt="">
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