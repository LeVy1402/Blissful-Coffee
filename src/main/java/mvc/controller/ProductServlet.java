package mvc.controller;

import mvc.model.Customer;
import mvc.model.Product;
import mvc.model.Rating;
import mvc.service.IProductService;
import mvc.service.IReviewService;
import mvc.service.impl.ProductService;
import mvc.service.impl.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/products")
public class ProductServlet extends HttpServlet {
    private IProductService iProductService = new ProductService();
    private IReviewService iReviewService = new ReviewService();
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
            case "update":
//                showUpdateFormCustomer(request, response);
                break;
            case "search":
//                showSearchFormCustomer(request, response);
                break;
            case "detail":
                try {
                    showDetailProduct(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
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



    private void showDetailProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = iProductService.selectProductById(id);
        List<Rating> ratingList = iReviewService.selectRatingById(id);
        RequestDispatcher dispatcher;
        List<Product> productListByCate = iProductService.selectProductByCategory(product.getCategoryId().getCategoryId());
        productListByCate.removeIf(item -> item.getProductId() == product.getProductId());
        request.setAttribute("productListByCate", productListByCate);
        request.setAttribute("product", product);
        request.setAttribute("reviewList", ratingList);
        dispatcher = request.getRequestDispatcher("views/product.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("actionReview");
        if (action == null) {
            action = "";
        }
        System.out.println(action);

        switch (action) {
//            case "create":
//                showNewFormCustomer(request, response);
//                break;
//            case "update":
//                showUpdateFormCustomer(request, response);
//                break;
//            case "search":
//                showSearchFormCustomer(request, response);
//                break;
//            case "detail":
//                try {
//                    showDetailProduct(request, response);
//                } catch (SQLException e) {
//                    throw new RuntimeException(e);
//                }
//                break;
            case "review":
                try {
                    addReviewProduct (request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                listProduct(request, response);
                System.out.printf("nhận");
                break;
        }
    }

    private void addReviewProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("UserLogin");
        Product product = iProductService.selectProductById(Integer.parseInt(request.getParameter("productId")));

        double score = Double.parseDouble(request.getParameter("score"));

        String remarks = request.getParameter("remarks");

        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        System.out.println(formatter.format(date));

        Date dateRecoreded = new Date();

//        Customer customer = new Customer(1,"Bảo Ng", "img");

//        customerId, String fullName, String profileCustomer
        Rating newReview = new Rating(product, score, remarks, dateRecoreded, customer);
        System.out.println(newReview.getCustomer().getFullName());
        iReviewService.addReview(newReview);
        List<Product> productListByCate = iProductService.selectProductByCategory(product.getCategoryId().getCategoryId());
        productListByCate.removeIf(item -> item.getProductId() == product.getProductId());
        request.setAttribute("productListByCate", productListByCate);
        request.setAttribute("product", product);
        request.setAttribute("reviewList", iReviewService.selectRatingById(product.getProductId()));

        response.sendRedirect("products");
//        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product.jsp");
//        dispatcher.forward(request, response);
    }
}
