package mvc.controller;

import mvc.model.Customer;
import mvc.model.Wishlist;
import mvc.service.IWishListService;
import mvc.service.impl.WishListService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "WishlistServlet", value = "/wishlist")
public class WishlistServlet extends HttpServlet {
    private IWishListService iWishListService = new WishListService() ;
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
                    addProductToWishList(request, response);
//                showNewFormCustomer(request, response);
                break;
            case "delete":
//                try {
//                    deleteProductFromCart(request, response);
//                } catch (SQLException e) {
//                    throw new RuntimeException(e);
//                }
//                break;
            default:
                listWishList(request, response);
                break;
        }
    }

    private void listWishList(HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        List<Wishlist> wishListList = iWishListService.selectWishListByCusId(customer);
        //lưu sản phẩm trong wishlist vào session
//        session.setAttribute("orderDetailList", orderDetailList);
    }

    private void addProductToWishList(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
