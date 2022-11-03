package com.se2115.anikit.servlets;

import com.se2115.anikit.interfaces.proxy.UserProxyImpl;
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

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {

    private DBService dbService;

    @Override
    public void init() throws ServletException {
        dbService = new UserService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession userSession = request.getSession();
        if(userSession.getAttribute("user_id") == null){
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        else{
            response.sendRedirect("index");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = (User) dbService.getObjectByField(email);

        if(user != null){
            if(email.equals(user.getEmail()) && password.equals(user.getPassword())){
                HttpSession userSession = request.getSession();
                UserProxyImpl proxy = new UserProxyImpl(true);
                proxy.setUser(user);
                User auth_user = proxy.getUser();
                userSession.setAttribute("user_id", auth_user.getId());
                response.sendRedirect("index");
            }
            else{
                response.sendRedirect("login?error=2");
            }
        }
        else{
            response.sendRedirect("login?error=1");
        }
    }
}

