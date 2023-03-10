package mvc.repository.impl;

import mvc.model.*;
import mvc.repository.DBConnection;
import mvc.repository.IReviewRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReviewRepository implements IReviewRepository {

    private static final String SELECT_RATING_BY_PRODUCT_ID = "SELECT rating_id, product.product_id, product_name, image, product_status, score, remarks, date_recorded, customer.customer_id ,fullname, profile_img FROM rating "
            + "inner join product on product.product_id = rating.product_id "
            + "inner join customer on customer.customer_id = rating.customer_id WHERE product.product_id=? ORDER BY date_recorded DESC";
    private static final String INSERT_REVIEW_SQL = "INSERT INTO rating (`product_id`,`score`,`remarks`,`date_recorded`,`customer_id`) VALUES" +
            "(?, ?, ?,?,?)";
    @Override
    public List<Rating> selectRatingById(int productId) throws SQLException {
        List<Rating> ratingList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_RATING_BY_PRODUCT_ID);
                preparedStatement.setInt(1, productId);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int ratingId = resultSet.getInt("rating_id");;
                    double score = resultSet.getDouble("score");
                    String remarks = resultSet.getString("remarks");
                    Date dateRecorded = resultSet.getDate("date_recorded");
                    Customer customer = new Customer(resultSet.getInt("customer_id"),
                            resultSet.getString("fullname"),
                            resultSet.getString("profile_img"));
                    Product product = new Product(resultSet.getInt("product_id"),resultSet.getString("product_name"),
                            resultSet.getString("image"),
                            resultSet.getString("product_status"));
                    Rating rating = new Rating(ratingId, product, score, remarks, dateRecorded, customer);
                    ratingList.add(rating);
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
        return ratingList;
    }

    @Override
    public void addReview(Rating review) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(INSERT_REVIEW_SQL);
                preparedStatement.setInt(1, review.getProduct().getProductId());
                preparedStatement.setDouble(2, review.getScore());
                preparedStatement.setString(3, review.getRemarks());
                preparedStatement.setDate(4, new java.sql.Date(review.getDateRecorded().getTime()));
                preparedStatement.setInt(5, review.getCustomer().getCustomerId());
//                System.out.println(preparedStatement);
                preparedStatement.executeUpdate();

            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
    }
}
