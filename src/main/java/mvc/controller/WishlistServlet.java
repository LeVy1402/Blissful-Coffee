package mvc.controller;

import mvc.model.Customer;
import mvc.model.Wishlist;
import mvc.service.IProductService;
import mvc.service.IWishListService;
import mvc.service.impl.ProductService;
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
                    addProductToWishList(request, response);
//                showNewFormCustomer(request, response);
                break;
            case "delete":
                try {
                    removeWishList(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                listWishList(request, response);
                break;
        }
    }

    private void removeWishList(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        int productId = Integer.parseInt(request.getParameter("id"));
        Wishlist wishlist = new Wishlist(iProductService.selectProductById(productId), customer );
        iWishListService.deleteWishList(wishlist);

        //lưu sản phẩm trong wishlist vào session
        session.setAttribute("orderDetailList", iWishListService.selectWishListByCusId(customer));

        response.sendRedirect("wishlist");


    }

    private void listWishList(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        List<Wishlist> wishListList = iWishListService.selectWishListByCusId(customer);

        //lưu sản phẩm trong wishlist vào session
//        session.setAttribute("orderDetailList", orderDetailList);


        RequestDispatcher dispatcher = request.getRequestDispatcher("views/wishlist.jsp");
        dispatcher.forward(request, response);
    }

    private void addProductToWishList(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        int productId = Integer.parseInt(request.getParameter("id"));

        Wishlist wishlist = new Wishlist(iProductService.selectProductById(productId), customer );
        iWishListService.addWishList(wishlist);

        //lưu sản phẩm trong wishlist vào session
        session.setAttribute("orderDetailList", iWishListService.selectWishListByCusId(customer));

        response.sendRedirect("wishlist");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
