<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add anime</title>
    <%@include file="components/stylesheets.jsp"%>
</head>
<body class="bg-dark">
<div>
    <%@include file="components/navbar.jsp"%>

    <div class="card bg-black mt-3" >
        <div class="card-header text-primary text-center p-4">
            <h3>Add Anime</h3>
        </div>

        <%
            if(request.getParameter("error")!=null){
        %>
        <div class="alert alert-danger" role="alert">
            Error happened
        </div>
        <%
        } else if(request.getParameter("success")!=null){
        %>
        <div class="alert alert-success" role="alert">
            Successfully added
        </div>
        <% } %>

        <div class="card-body">
            <!-- Register form -->
            <form method="post" action="add_anime">
                <!-- Name -->
                <div class="input-group mb-3">
                    <input  name="title" type="text" class="form-control bg-transparent border border-primary" placeholder="Title" aria-label="Title" required>
                </div>
                <!-- Description -->
                <div class="mb-3">
                    <label for="descriptionTextarea" class="form-label">Description</label>
                    <textarea name="description" class="form-control border border-primary" id="descriptionTextarea" rows="3" maxlength="250"></textarea>
                </div>
                <!-- State -->
                <div class="input-group mb-3">
                    <select class="form-select border border-primary" name="state" aria-label="State select">
                        <option selected>Announced</option>
                        <option>Ongoing</option>
                        <option>Finished</option>
                    </select>
                </div>
                <!-- Cover -->
                <div class="input-group mb-3">
                    <input name="cover" type="text" class="form-control bg-transparent border border-primary" placeholder="Cover" aria-label="Cover">
                </div>
                <!-- Add button -->
                <div class="text-center">
                    <button type="submit" class="mb-3 btn btn-primary w-50 text-black">Add</button>
                </div>
            </form>

        </div>

    </div>
</div>

</body>
</html>