package mvc.controller;

import mvc.model.Customer;
import mvc.service.ILoginService;
import mvc.service.impl.LoginService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = {"/logins",""} )
public class LoginServlet extends HttpServlet {
    private ILoginService iLoginService = new LoginService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "forgot_password":
                forgot(request,response);
                break;
            case "logout":
                session.invalidate();
                response.sendRedirect("/dashboards");
                break;
            default:
                listCustomer(request, response);
                break;
        }
    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/login.jsp");
        dispatcher.forward(request, response);
    }

    private void forgot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/forgotten_pass.jsp");
        dispatcher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = String.valueOf(request.getParameter("action"));
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "forgot_password":
                Forgot(request,response);
                break;
            default:
                processRequest(request,response);
                break;
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        System.out.println("ALO ANH ");
//        response.setContentType("text/html;charset=UFT-8");
        try {
            String email = request.getParameter("Email");
            String pass = request.getParameter("Pass");
            System.out.println(email + pass);
            Customer customer = iLoginService.checkLogin(email, pass);
            if (customer == null) {
                response.sendRedirect("/logins?err=1");
            }else {
                session.setAttribute("UserLogin",customer);
                System.out.println(customer.getFullName());
                response.sendRedirect("/dashboards");
            }
        } catch (Exception e){
            System.out.println(e);
        }
    }

    protected void Forgot(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String txtEmail = request.getParameter("txtEmail");
        String txtPass = request.getParameter("txtPass");
        if(iLoginService.ForgotPass(txtEmail,txtPass) > 0){
            //thành công
            response.sendRedirect("/logins?msg=1");
            return;
        }else {
            //thất bại
            response.sendRedirect("/logins?action=forgot_password&&err=1");
            return;
        }
    }

}
