package mvc.repository.impl;

import mvc.model.Category;
import mvc.model.Product;
import mvc.repository.DBConnection;
import mvc.repository.IProductRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductRepository implements IProductRepository {

    private static final String SELECT_ALL_PRODUCT_IN_FEATURE = "select * from `product` join `category` using(`category_id`) where `product_status` = \"Feature\"\n";
        private static final String SELECT_ALL_PRODUCT = "SELECT * FROM `product` join `category` using(`category_id`);";
    private static final String SEARCH_NAME_PRODUCT = "select * from `product` join `category` using(`category_id`) where `product_name` like ?;";

    private static final String SELECT_PRODUCT_BY_ID= "select * from `product` join `category` using(`category_id`) where `product_id`= ?";
    private static final String SELECT_PRODUCT_BY_CATEGORY= "select * from `product` join `category` using(`category_id`) where `category_id`= ?";


    @Override
    public List<Product> selectAllProductInFeature() {
        return null;
    }

    @Override
    public List<Product> selectAllProduct() {
        List<Product> productList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCT);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int productId = resultSet.getInt("product_id");
                    String productName = resultSet.getString("product_name");
                    double price = resultSet.getDouble("price");
                    int quantity = resultSet.getInt("quantity");
                    String description = resultSet.getString("description");
                    String productStatus = resultSet.getString("product_status");
                    String image = resultSet.getString("image");
                    Date dateUpdate = resultSet.getDate("date_update");
                    Category category = new Category(resultSet.getInt("category_id"), resultSet.getString("category_name"));
                    Product product = new Product(productId, productName, price, quantity, description, productStatus, image, dateUpdate, category);
                    productList.add(product);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return productList;
    }

    @Override
    public List<Product> searchProduct(String search) {
        List<Product> productList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_NAME_PRODUCT);
            preparedStatement.setString(1, "%" + search + "%");

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("product_id");
                String productName = rs.getString("product_name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String description = rs.getString("description");
                String productStatus = rs.getString("product_status");
                String image = rs.getString("image");
                Date dateUpdate = rs.getDate("date_update");
                Category category = new Category(rs.getInt("category_id"), rs.getString("category_name"));

                Product product = new Product(productId, productName, price, quantity, description, productStatus, image, dateUpdate, category);
                productList.add(product);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return productList;
    }


    @Override
    public List<Product> selectProductByCategory(int cateId) {
        List<Product> productListByCategory = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_CATEGORY);
            preparedStatement.setInt(1, cateId);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("product_id");
                String productName = rs.getString("product_name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String description = rs.getString("description");
                String productStatus = rs.getString("product_status");
                String image = rs.getString("image");
                Date dateUpdate = rs.getDate("date_update");
                Category category = new Category(rs.getInt("category_id"), rs.getString("category_name"));

                Product product = new Product(productId, productName, price, quantity, description, productStatus, image, dateUpdate, category);
                productListByCategory.add(product);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return productListByCategory;
}
