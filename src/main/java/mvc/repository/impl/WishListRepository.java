package mvc.repository.impl;

import mvc.model.Category;
import mvc.model.Customer;
import mvc.model.Product;
import mvc.model.Wishlist;
import mvc.repository.DBConnection;
import mvc.repository.IWishListRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WishListRepository implements IWishListRepository {

    private static final String SELECT_WISHLIST_BY_CUSTOMER_ID = "SELECT * FROM `wishlist` JOIN `product` USING(`product_id`) JOIN `customer` USING(`customer_id`) WHERE wishlist.customer_id = ?  ";
    @Override
    public List<Wishlist> selectWishListByCusId(Customer customer) {

        List<Wishlist> wishlistList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_WISHLIST_BY_CUSTOMER_ID);
                preparedStatement.setInt(1, customer.getCustomerId());
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    Product product = new Product(resultSet.getInt("product_id"),
                            resultSet.getString("product_name"),
                            resultSet.getString("image"),
                            resultSet.getDouble("price"));

                    customer = new Customer(resultSet.getInt("customer_id"),
                            resultSet.getString("fullname"),
                            resultSet.getDate("dob"),
                            resultSet.getBoolean("gender"),
                            resultSet.getString("email"),
                            resultSet.getString("phone_number"),
                            resultSet.getString("profile_img"),
                            resultSet.getString("password"),
                            resultSet.getString("account_status"),
                            resultSet.getString("address"));

                    Wishlist wishlist = new Wishlist(product, customer);
                    wishlistList.add(wishlist);
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
        return wishlistList;
    }
}
