package mvc.controller;

import mvc.service.IRegisterService;
import mvc.service.impl.RegisterService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    private IRegisterService registerService = new RegisterService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Mợt nha mài");
        String fullName = request.getParameter("full_name");
//        String dob = request.getParameter("dob");
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        try {
//            Date dobDate = sdf.parse(dob);
//        } catch (ParseException e) {
//            throw new RuntimeException(e);
//        }
//        boolean gender = request.getParameter("gender").isEmpty();
//        String email = request.getParameter("email");
//        String phoneNumber = request.getParameter("phone_number");
//        String address = request.getParameter("address");
//        String password = request.getParameter("password");

        PrintWriter out = response.getWriter();
        out.print(fullName);
//        out.print(dob);
//        out.print(gender);
//        out.print(email);
//        out.print(phoneNumber);
//        out.print(email);
//        out.print(phoneNumber);

    }
}
