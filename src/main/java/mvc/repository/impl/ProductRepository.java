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

    @Override
    public List<Product> selectAllProductInFeature() {
        List<Product> productList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCT_IN_FEATURE);
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
}
