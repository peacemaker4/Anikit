package com.se2115.anikit.servlets;

import com.se2115.anikit.models.anime.Anime;
import com.se2115.anikit.models.anime.AnnouncedState;
import com.se2115.anikit.models.anime.FinishedState;
import com.se2115.anikit.models.anime.OngoingState;
import com.se2115.anikit.services.AnimeService;
import com.se2115.anikit.services.DBService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/anime")
public class AnimePageServlet extends HttpServlet {

    private DBService dbService;

    @Override
    public void init() throws ServletException {
        dbService = new AnimeService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] params = request.getParameterValues("anime_id");
        String anime_id = params[0];
        Object user_id = request.getSession().getAttribute("user_id");
        if(user_id != null){
            List<Integer> list_sub = ((AnimeService)dbService).getAllSubAnime(user_id.toString());
            request.setAttribute("list_sub", list_sub);
        }
        request.setAttribute("anime", dbService.getObjectByField(anime_id));
        request.getRequestDispatcher("anime_page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

