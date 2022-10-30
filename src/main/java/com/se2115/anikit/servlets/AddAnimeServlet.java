package com.se2115.anikit.servlets;

import com.se2115.anikit.models.anime.Anime;
import com.se2115.anikit.models.anime.AnnouncedState;
import com.se2115.anikit.models.anime.FinishedState;
import com.se2115.anikit.models.anime.OngoingState;
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
            Anime new_anime = new Anime(title, description);
            new_anime.setCover(cover);
            switch (state){
                case "Announced":
                    new_anime.setState(new AnnouncedState());
                    break;
                case "Ongoing":
                    new_anime.setState(new OngoingState());
                    break;
                case "Finished":
                    new_anime.setState(new FinishedState());
                    break;
            }
            dbService.addObject(new_anime);
            redirect = "add_anime?success";
        }
        response.sendRedirect(redirect);
    }
}
