package com.se2115.anikit.servlets;

import com.se2115.anikit.models.anime.*;
import com.se2115.anikit.models.user.User;
import com.se2115.anikit.services.AnimeService;
import com.se2115.anikit.services.DBService;
import com.se2115.anikit.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/add_anime")
public class AddAnimeServlet extends HttpServlet {

    private DBService dbService;

    @Override
    public void init() throws ServletException {
        dbService = new AnimeService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("add_anime.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String cover = request.getParameter("cover");
        String state = request.getParameter("state");

        String redirect = "add_anime?error=1";
        if(title != null){
            AnimeBuilder animeBuilder = new AnimeBuilder();
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
            dbService.addObject(animeBuilder.getAnime());
            redirect = "add_anime?success";
        }
        response.sendRedirect(redirect);
    }
}
