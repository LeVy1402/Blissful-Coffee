package mvc.controller;

import mvc.model.Product;
import mvc.service.IProductService;
import mvc.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PageProductServlet", value = "/pageProduct")
public class PageProductServlet extends HttpServlet {
    IProductService iProductService =new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        System.out.println(action);
        switch (action) {
            default:
                showProductByCategory(request, response);
                break;
        }
    }

    private void header(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("layouts/header.jsp");
        dispatcher.forward(request, response);
    }

    private void showProductByCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");
        List<Product> productList ;
        productList = iProductService.searchProductCate(category);
        System.out.println(productList.size());
        RequestDispatcher dispatcher;
        request.setAttribute("productList", productList);
        dispatcher = request.getRequestDispatcher("views/showProduct.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

