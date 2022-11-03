package com.se2115.anikit.servlets;

import com.se2115.anikit.models.site.DarkTheme;
import com.se2115.anikit.models.site.LightTheme;
import com.se2115.anikit.models.site.MainSite;
import com.se2115.anikit.services.DBService;
import com.se2115.anikit.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/theme")
public class SiteThemeServlet extends HttpServlet {

    private MainSite site;

    @Override
    public void init() throws ServletException {
        site = MainSite.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        switch (site.getSite_theme().getClass().getSimpleName()){
            case "LightTheme":
                site.setSite_theme(new DarkTheme());
                break;
            case "DarkTheme":
                site.setSite_theme(new LightTheme());
                break;
        }
        response.sendRedirect("index");
    }
}
