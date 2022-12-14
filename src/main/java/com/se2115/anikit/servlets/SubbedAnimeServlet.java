package com.se2115.anikit.servlets;

import com.se2115.anikit.services.AnimeService;
import com.se2115.anikit.services.DBService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/subbed_anime_list")
public class SubbedAnimeServlet extends HttpServlet {
    private DBService dbService;

    @Override
    public void init() throws ServletException {
        dbService = new AnimeService();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Object> list = dbService.getAll();

        Object user_id = request.getSession().getAttribute("user_id");
        if(user_id != null){
            List<Integer> list_sub = ((AnimeService)dbService).getAllSubAnime(user_id.toString());
            request.setAttribute("list_sub", list_sub);

            request.setAttribute("list", list);
            request.getRequestDispatcher("subbed_anime_list.jsp").forward(request, response);
        }
    }

    public void destroy() {
    }
}