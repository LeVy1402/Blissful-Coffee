package mvc.controller;

import mvc.model.Product;
import mvc.model.Rating;
import mvc.repository.IReviewRepository;
import mvc.repository.impl.ReviewRepository;
import mvc.service.IProductService;
import mvc.service.IReviewService;
import mvc.service.impl.ProductService;
import mvc.service.impl.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DashboardServlet", value = "/dashboards")
public class DashboardServlet extends HttpServlet {
    IProductService iProductService =new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
//        System.out.println(action);
        switch (action) {
            case "create":
//                showNewFormCustomer(request, response);
                break;

            case "update":
//                showUpdateFormCustomer(request, response);
                break;
            case "search":
                showSearchProduct(request, response);
                System.out.println("search");
                break;
            default:
                dashboard(request, response);
                System.out.printf("list");
                break;
        }
    }



    private void showSearchProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchName = request.getParameter("searchName");
        List<Product> productList ;
        productList = iProductService.searchProduct(searchName);
        RequestDispatcher dispatcher;
        request.setAttribute("productList", productList);
        dispatcher = request.getRequestDispatcher("views/search.jsp");
        dispatcher.forward(request, response);
    }

    private void dashboard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productListInFeature = iProductService.selectAllProductInFeature();
        request.setAttribute("productList", productListInFeature);
        List<Product> productList = iProductService.selectAllProduct();
        request.setAttribute("productListF", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/dashboard.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
