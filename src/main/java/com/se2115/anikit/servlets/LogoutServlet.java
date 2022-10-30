package com.se2115.anikit.servlets;

import com.se2115.anikit.models.user.User;
import com.se2115.anikit.services.DBService;
import com.se2115.anikit.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(value = "/logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession userSession = request.getSession();
        userSession.removeAttribute("user_id");
        response.sendRedirect("index");
    }
}
