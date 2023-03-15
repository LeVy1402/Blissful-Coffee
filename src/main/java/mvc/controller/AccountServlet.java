package mvc.controller;

import mvc.model.Customer;
import mvc.model.Product;
import mvc.service.IAccountService;
import mvc.service.impl.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EditAccountServlet", value = {"/accounts"})
public class AccountServlet extends HttpServlet {
    private IAccountService iAccountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");


        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "editInfo":
                try {
                    editFormAccount(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "changePass":
                formChangePass(request, response);
                break;
            default:
                try {
                    pageMyAccount(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }

    private void pageMyAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/profile/my_account.jsp");
        dispatcher.forward(request, response);
    }

    private void formChangePass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/profile/change_passwork.jsp");
        dispatcher.forward(request, response);
    }

    private void editFormAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        HttpSession session = request.getSession();
        Customer UserLogin = (Customer) session.getAttribute("UserLogin");
        System.out.println(UserLogin.getCustomerId());
        request.setAttribute("customerById", iAccountService.selectByIdCustomer(UserLogin.getCustomerId()));
//        System.out.println(iAccountService.selectByIdCustomer(UserLogin.getCustomerId()).toString());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/profile/edit_account.jsp");

        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "editInfo":
                String fullName = request.getParameter("fullName");
                System.out.println(fullName);
                try {
                    editInfoAccount(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "changePass":
                changePassAccount(request, response);
                break;
        }
    }

    private void editInfoAccount(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
        HttpSession session = request.getSession();
        Customer UserLogin = (Customer) session.getAttribute("UserLogin");
//        int customerId = UserLogin.getCustomerId();
        int customerId = Integer.parseInt(request.getParameter("id"));

        String fullName = request.getParameter("fullName");
        Date dateOfBirth = Date.valueOf(request.getParameter("dateOfBirth"));

        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Customer customerUpdate = new Customer(customerId, fullName, dateOfBirth, gender, contact, email, address);
        iAccountService.updateCustomer(customerUpdate);

//        request.setAttribute("editAccount", iAccountService.selectByIdCustomer(customerId));
        request.setAttribute("customerById", iAccountService.selectByIdCustomer(UserLogin.getCustomerId()));
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/profile/edit_account.jsp?msg=updateSuccess");
        dispatcher.forward(request, response);

    }

    private void changePassAccount(HttpServletRequest request, HttpServletResponse response) {

    }

}
