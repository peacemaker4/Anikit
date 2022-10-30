package com.se2115.anikit.servlets;

import com.se2115.anikit.dbo.PostgresDBO;
import com.se2115.anikit.models.user.User;
import com.se2115.anikit.services.DBService;
import com.se2115.anikit.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.Console;
import java.io.IOException;

@WebServlet(value = "/register")
public class RegisterServlet extends HttpServlet {

    private DBService dbService;

    @Override
    public void init() throws ServletException {
        dbService = new UserService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");

        String redirect = "register?error=1";

//        if(dbService.getObjectByField(email) != null){
//            redirect = "register?error=1";
//        }
//        else{
            redirect = "register?error=2";
            if(password.equals(confirmPassword)){
                dbService.addObject(new User(email, password));
                redirect = "login";
            }
//        }
        response.sendRedirect(redirect);
    }
}
