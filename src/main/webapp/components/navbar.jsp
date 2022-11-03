<%@ page import="com.se2115.anikit.models.site.MainSite" %>
<!-- ***** Header Area Start ***** -->

<header class="header-area header-sticky <%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "bg-light" : "bg-dark"%>" data-wow-duration="0.75s" data-wow-delay="0s">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index" class="logo">
                        <img src="assets/images/logo-v3.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->


                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li class="scroll-to-section">
                            <form action="theme" method="post">
                                <% if(MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme")){ %>
                                    <button class="btn border border-rounded">
                                        <i class="fa-solid fa-sun"></i>
                                    </button>
                                <% } else if(MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("DarkTheme")){ %>
                                    <button class="btn bg-dark border border-rounded text-light">
                                        <i class="fa-solid fa-moon"></i>
                                    </button>
                                <% } %>
                            </form>
                        </li>
                        <li class="scroll-to-section"><a href="index" class="active">Home</a></li>
                        <li class="scroll-to-section"><a href="#about" class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "" : "text-light"%>">About Us</a></li>
                        <li class="scroll-to-section"><a href="anime_list" class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "" : "text-light"%>">Watch anime</a></li>
                        <li class="scroll-to-section"><a href="#portfolio" class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "" : "text-light"%>">Anikit suggests</a></li>
                        <li class="scroll-to-section"><a href="#contact" class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "" : "text-light"%>">Contacts</a></li>
                        <% if(request.getSession().getAttribute("user_id") == null){  %>
                                <li class="scroll-to-section"><div class="border-first-button"><a href="login">LOGIN</a></div></li>
                        <% } else { %>
                            <li class="scroll-to-section"><a href="add_anime" class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "" : "text-light"%>">Add anime</a></li>
                            <li class="scroll-to-section"><div class="border-first-button"><a href="logout">LOGOUT</a></div></li>
                        <%}%>

                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->