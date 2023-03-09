package mvc.repository.impl;

import mvc.model.Category;
import mvc.model.Order;
import mvc.model.OrderDetail;
import mvc.model.Product;
import mvc.repository.DBConnection;
import mvc.repository.IOrderDetailRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderDetailRepository implements IOrderDetailRepository {
    private static final String SELECT_ORDER_DETAIL_BY_ORDER_ID= "SELECT * FROM coffee_blissful.order_detail " +
            "inner join product on product.product_id = order_detail.product_id " +
            "inner join `order` on `order`.order_id = order_detail.order_id " +
            "where order_detail.order_id=?";
    @Override
    public List<OrderDetail> getOrderDetailByOrderId(int orderId) {
        List<OrderDetail> orderDetailList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ORDER_DETAIL_BY_ORDER_ID);
                preparedStatement.setInt(1, orderId);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int detailId = resultSet.getInt("order_detail_id");
                    Product product = new Product(resultSet.getInt("product_id"),
                            resultSet.getString("product_name"),
                            resultSet.getString("image"),
                            resultSet.getDouble("price") );
                    Order order = new Order(resultSet.getInt("order_id"));
                    int quantity = resultSet.getInt("quantity");
                    OrderDetail orderDetail = new OrderDetail(orderId, product, order, quantity);
                    orderDetailList.add(orderDetail);
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
        return orderDetailList;
    }
}
