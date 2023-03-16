package mvc.controller;

import mvc.model.Customer;
import mvc.service.*;
import mvc.service.impl.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "LoginServlet", value = {"/logins"} )
public class LoginServlet extends HttpServlet {
    private ILoginService iLoginService = new LoginService();
    private IOrderDetailService iOrderDetailService = new OrderDetailService();
    private IOrderService iOrderService = new OrderService();
    private IWishListService iWishListService = new WishListService();
    private ICategoryService iCategoryService = new CategoryService();

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
//        response.setContentType("text/html;charset=UFT-8");
        try {
            String email = request.getParameter("Email");
            String pass = request.getParameter("Pass");
            System.out.println(email + pass);
            Customer customer = iLoginService.checkLogin(email, pass);

            if (customer == null) {
//                response.sendRedirect("/logins?err=1");
                response.sendRedirect(request.getContextPath()+"logins?err=loginError");
            }else {
                System.out.println(customer.getCustomerId());

                session.setAttribute("categoryList", iCategoryService.selectAllCategory());
                session.setAttribute("UserLogin",customer);
                session.setAttribute("wishListList", iWishListService.selectWishListByCusId(customer));
                if (iOrderService.findOrderInCartByCusId(customer)==null){
                    iOrderService.createOrderInCart(customer);
                }
                session.setAttribute("orderInCart", iOrderService.findOrderInCartByCusId(customer));
                session.setAttribute("orderDetailList", iOrderDetailService.getOrderDetailByOrderId(iOrderService.findOrderInCartByCusId(customer).getOrderId()));
                System.out.println(customer.getFullName() + "what");
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
