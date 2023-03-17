package mvc.controller;

import com.sun.org.apache.xpath.internal.operations.Or;
import mvc.model.Customer;
import mvc.model.Order;
import mvc.model.OrderDetail;
import mvc.service.IOrderDetailService;
import mvc.service.IOrderService;
import mvc.service.impl.OrderDetailService;
import mvc.service.impl.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

@WebServlet(name = "OrderServlet", value = "/order")
public class OrderServlet extends HttpServlet {

    private IOrderService iOrderService = new OrderService();
    private IOrderDetailService iorderDetailService = new OrderDetailService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action + "from get");
        switch (action) {
//            case "update":
//                try {
//                    updateOrderDetail(request, response);
//                } catch (SQLException e) {
//                    throw new RuntimeException(e);
//                }
//                break;
            default:
                try {
                    getOrderHistoryList(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    private void getOrderHistoryList(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        List<Order> orderList = iOrderService.selectAllCheckoutOrder(customer);

        List<List<OrderDetail>> totalOrderDetailList=  new ArrayList<>();
        Map<Order, List<OrderDetail>> orderMap = new TreeMap<>(new Comparator<Order>() {
            @Override
            public int compare(Order order1, Order order2) {
                return order2.getOrderDate().compareTo(order1.getOrderDate());
            }
        });

        for (Order order : orderList){
            orderMap.put(order, iorderDetailService.getOrderDetailByOrderId(order.getOrderId()));
            System.out.println(orderMap.get(order));
        }



        request.setAttribute("productsByOrderList", orderMap );

        request.setAttribute("orderList", orderList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/orderHistory.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
