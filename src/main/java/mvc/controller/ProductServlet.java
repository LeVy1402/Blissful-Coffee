package mvc.controller;

import mvc.model.Product;
import mvc.service.IProductService;
import mvc.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/dashboards")
public class ProductServlet extends HttpServlet {
    private IProductService iProductService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            case "create":
//                showNewFormCustomer(request, response);
                break;

            case "update":
//                showUpdateFormCustomer(request, response);
                break;
            case "search":
//                showSearchFormCustomer(request, response);
                break;
            default:
                listProduct(request, response);
                System.out.printf("nhận");
                break;
        }
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = iProductService.selectAllProductInFeature();
        request.setAttribute("productList", productList);
        System.out.println(productList.size());
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/dashboard.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
