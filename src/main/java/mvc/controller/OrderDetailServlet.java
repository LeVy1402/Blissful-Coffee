package mvc.controller;

import mvc.model.Customer;
import mvc.model.Order;
import mvc.model.OrderDetail;
import mvc.service.IOrderDetailService;
import mvc.service.IOrderService;
import mvc.service.IProductService;
import mvc.service.impl.OrderDetailService;
import mvc.service.impl.OrderService;
import mvc.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "OrderDetailServlet", value = "/cart")
public class OrderDetailServlet extends HttpServlet {
    private IOrderDetailService iOrderDetailService = new OrderDetailService();
    private IOrderService iOrderService = new OrderService();

    private IProductService iProductService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "add":
                addProductToCart(request, response);
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

    private void addProductToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        if (iOrderService.findOrderInCartByCusId(customer)==null){
            iOrderService.createOrderInCart(customer);
        }
        Order order = iOrderService.findOrderInCartByCusId(customer);
        int productId = Integer.parseInt(request.getParameter("id"));
        int quantity = 1; //test
        OrderDetail orderDetail = new OrderDetail(iProductService.selectProductById(productId), order, quantity);
        iOrderDetailService.addOrderDetail(orderDetail);

        List<OrderDetail> orderDetailList = iOrderDetailService.getOrderDetailByOrderId(order.getOrderId() );
        request.setAttribute("orderDetailList", orderDetailList);

        //lưu sản phẩm trong giỏ hàng vào session
        session.setAttribute("orderDetailList", orderDetailList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("views/cart.jsp");
        dispatcher.forward(request, response);
    }

    private void listOrderDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");

        if (iOrderService.findOrderInCartByCusId(customer)==null){
            iOrderService.createOrderInCart(customer);
        }
        Order order = iOrderService.findOrderInCartByCusId(customer);
        List<OrderDetail> orderDetailList = iOrderDetailService.getOrderDetailByOrderId(order.getOrderId() );
        request.setAttribute("orderDetailList", orderDetailList);

        //lưu sản phẩm trong giỏ hàng vào session
        session.setAttribute("orderDetailList", orderDetailList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/cart.jsp");
        dispatcher.forward(request, response);
//        int orderId = Integer.parseInt(request.getParameter("orderId"));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
