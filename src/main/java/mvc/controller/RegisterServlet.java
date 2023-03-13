package mvc.controller;

import mvc.model.Customer;
import mvc.service.ILoginService;
import mvc.service.IRegisterService;
import mvc.service.impl.LoginService;
import mvc.service.impl.RegisterService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    private IRegisterService iregisterService = new RegisterService();
    private ILoginService iLoginService = new LoginService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "register":

                break;
            default:
                formRegister(request, response);
                break;
        }
    }

    private void formRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/auth/register.jsp");
        dispatcher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {

            default:
                try {
                    registerUser(request, response);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                break;
        }

    }

    private void registerUser(HttpServletRequest request, HttpServletResponse response) throws ParseException, ServletException, IOException {
        String fullName = request.getParameter("fullName");
        Date dateOfBirth = Date.valueOf(request.getParameter("dateOfBirth"));

        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        System.out.println(gender);
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        ArrayList<Customer> checkemail = iLoginService.all();
        for (Customer kt: checkemail) {
            if(email.equals(kt.getEmail())){
                response.sendRedirect("/register?err=ttemail");
                return;
            }
        }
        Customer customer = new Customer(fullName, dateOfBirth, gender, contact, email, password, address);
        iregisterService.addCustomer(customer);
        response.sendRedirect(request.getContextPath()+"/logins?msg=signinSuccess");
    }
}
