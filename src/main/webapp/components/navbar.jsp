<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="index">Anikit</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="anime_list">Anime list</a>
                </li>
                <% if(request.getSession().getAttribute("user_id") == null){  %>
                    <li class="nav-item">
                        <a class="nav-link" href="login">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register">Register</a>
                    </li>
                <% } else { %>
                    <li class="nav-item">
                        <a class="nav-link" href="add_anime">Add anime +</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                <%}%>

            </ul>
        </div>
    </div>
</nav>