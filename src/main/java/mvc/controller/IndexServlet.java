package mvc.controller;

import mvc.model.Category;
import mvc.model.Product;
import mvc.service.ICategoryService;
import mvc.service.IProductService;
import mvc.service.impl.CategoryService;
import mvc.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "IndexServlet", value = "")
public class IndexServlet extends HttpServlet {

    private ICategoryService iCategoryService = new CategoryService();
    private IProductService iProductService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Category> categoryList = iCategoryService.selectAllCategory();
        session.setAttribute("categoryList", categoryList);

//        for (int i=0; i<categoryList.size();i++){
//            List<Product> productListByCate = iProductService.selectProductByCategory(categoryList.get(i).getCategoryId());
//            session.setAttribute("productListByCate"+categoryList.get(i), productListByCate);
//        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
