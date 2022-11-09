package com.se2115.anikit.servlets;

import com.se2115.anikit.models.anime.*;
import com.se2115.anikit.services.AnimeService;
import com.se2115.anikit.services.DBService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/anime_edit")
public class AnimeEditServlet extends HttpServlet {

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

            Object anime = dbService.getObjectByField(anime_id);
            request.setAttribute("anime", anime);
            if(Integer.toString(((Anime)anime).getUser_id()).equals(user_id.toString()))
                request.getRequestDispatcher("edit_anime.jsp").forward(request, response);
            else
                request.getRequestDispatcher("anime_page.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String id = request.getParameter("anime_id");
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            String cover = request.getParameter("cover");
            String state = request.getParameter("state");
            AnimeBuilder animeBuilder = new AnimeBuilder();

            String redirect = "anime?anime_id=" + id;
            animeBuilder.setTitle(title);
            animeBuilder.setDescription(description);
            animeBuilder.setCover(cover);
            switch (state){
                case "Announced":
                    animeBuilder.setState(new AnnouncedState());
                    break;
                case "Ongoing":
                    animeBuilder.setState(new OngoingState());
                    break;
                case "Finished":
                    animeBuilder.setState(new FinishedState());
                    break;
            }
            Object user_id = request.getSession().getAttribute("user_id");
            if(user_id != null){
                animeBuilder.setUserId((Integer) user_id);
            }
            animeBuilder.setId(Integer.parseInt(id));
            System.out.println(animeBuilder.getAnime());
            dbService.updateObject(animeBuilder.getAnime());
            response.sendRedirect(redirect);
    }
}

