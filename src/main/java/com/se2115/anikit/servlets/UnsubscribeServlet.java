package com.se2115.anikit.servlets;

import com.se2115.anikit.services.DBService;
import com.se2115.anikit.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/unsubscribe")
public class UnsubscribeServlet extends HttpServlet {

    private DBService dbService;

    @Override
    public void init() throws ServletException {
        dbService = new UserService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_id = request.getSession().getAttribute("user_id").toString();
        String anime_id = request.getParameter("anime_id");

        if(user_id != null && anime_id != null){
            ((UserService)dbService).unsubscribe(Integer.parseInt(anime_id), Integer.parseInt(user_id));
            response.sendRedirect("subbed_anime_list");
        }
    }
}
