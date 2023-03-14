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
                try {
                    addProductToCart(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
//                showNewFormCustomer(request, response);
                break;
            case "delete":
                try {
                    deleteProductFromCart(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                    listOrderDetail(request, response);
                break;
        }
    }

    private void deleteProductFromCart(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        Order order = iOrderService.findOrderInCartByCusId(customer);
        int productId = Integer.parseInt(request.getParameter("id"));
        OrderDetail orderDetail = new OrderDetail(iProductService.selectProductById(productId), order);
        iOrderDetailService.deleteOrderDetail(orderDetail);

        List<OrderDetail> orderDetailList = iOrderDetailService.getOrderDetailByOrderId(order.getOrderId() );
        request.setAttribute("orderDetailList", orderDetailList);

        //lưu sản phẩm trong giỏ hàng vào session
        session.setAttribute("orderDetailList", orderDetailList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("views/cart.jsp");
        dispatcher.forward(request, response);
    }

    private OrderDetail checkOrderDetailInCart(List<OrderDetail> orderDetailListInCart, OrderDetail orderDetail){
        for(OrderDetail orderDetail1 : orderDetailListInCart) {
            if(orderDetail1.getProduct().getProductId() == orderDetail.getProduct().getProductId()) {
                return orderDetail1;
            }
        }
        return null;
    }

    private void addProductToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        List<OrderDetail> orderDetailList = (List<OrderDetail>) session.getAttribute("orderDetailList");

        if (iOrderService.findOrderInCartByCusId(customer)==null){
            iOrderService.createOrderInCart(customer);
        }
        Order order = iOrderService.findOrderInCartByCusId(customer);
        int productId = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        OrderDetail orderDetail = new OrderDetail(iProductService.selectProductById(productId), order, quantity);


        //kiểm tra xem có trùng sản phẩm trong giỏ hàng ko, nếu có thì tăng quantity, nếu không thì thêm mới
        OrderDetail orderDetail1 = checkOrderDetailInCart(orderDetailList, orderDetail);
        System.out.println(orderDetail1);
        if (orderDetail1==null){
            iOrderDetailService.addOrderDetail(orderDetail);
        }
        else {
            orderDetail1.setQuantity(orderDetail1.getQuantity()+quantity);
            iOrderDetailService.updateOrderDetail(orderDetail1);
        }

        orderDetailList = iOrderDetailService.getOrderDetailByOrderId(order.getOrderId() );
        request.setAttribute("orderDetailList", orderDetailList);

        //lưu sản phẩm trong giỏ hàng vào session
        session.setAttribute("orderDetailList", orderDetailList);

        response.sendRedirect("dashboards");
    }

    private void listOrderDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");

        //order trong giỏ hàng
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
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "update":
                try {
                    updateOrderDetail(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
               break;
            default:
                listOrderDetail(request, response);
                break;
        }
    }

    private void updateOrderDetail(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        Order order = iOrderService.findOrderInCartByCusId(customer);
        int productId = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        OrderDetail orderDetail = new OrderDetail(iProductService.selectProductById(productId), order, quantity);
        iOrderDetailService.updateOrderDetail(orderDetail);

        List<OrderDetail> orderDetailList = iOrderDetailService.getOrderDetailByOrderId(order.getOrderId() );
        request.setAttribute("orderDetailList", orderDetailList);

        //lưu sản phẩm trong giỏ hàng vào session
        session.setAttribute("orderDetailList", orderDetailList);

        response.sendRedirect("cart");
    }
}
