package mvc.controller;

import mvc.model.Customer;
import mvc.model.Order;
import mvc.model.OrderDetail;
import mvc.service.IOrderDetailService;
import mvc.service.impl.OrderDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "OrderDetailServlet", value = "/cart")
public class OrderDetailServlet extends HttpServlet {
    private IOrderDetailService iOrderDetailService = new OrderDetailService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "create":
//                showNewFormCustomer(request, response);
                break;
            case "delete":
//                try {
//                    showDeleteCustomer(request, response);
//                } catch (SQLException e) {
//                    throw new RuntimeException(e);
//                }
                break;
            default:
                    listOrderDetail(request, response);
                break;
        }
    }

    private void listOrderDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int orderId = Integer.parseInt(request.getParameter("orderId"));
        List<OrderDetail> orderDetailList = iOrderDetailService.getOrderDetailByOrderId(1);
        request.setAttribute("orderDetailList", orderDetailList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/cart.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
