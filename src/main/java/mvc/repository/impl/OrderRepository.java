package mvc.repository.impl;

import mvc.model.Customer;
import mvc.model.Order;
import mvc.repository.DBConnection;
import mvc.repository.IOrderRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderRepository implements IOrderRepository {
    private static final String INSERT_ORDER_INIT = "INSERT INTO `order` (`customer_id`,`order_status`) VALUES" +
            "(?,'in cart')";

    private static final String FIND_ORDER_IN_CART = "SELECT * FROM `order` WHERE customer_id=? AND order_status='in cart'";
    @Override
    public void createOrderInCart(Customer customer) {
        Order order = null;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(INSERT_ORDER_INIT);
                preparedStatement.setInt(1, customer.getCustomerId());
                System.out.println(preparedStatement);
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

    @Override
    public Order findOrderInCartByCusId(Customer customer) {
        Order order = null;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(FIND_ORDER_IN_CART);
                preparedStatement.setInt(1, customer.getCustomerId());
                resultSet = preparedStatement.executeQuery();
                if (resultSet.next()){
                    int orderId = resultSet.getInt("order_id");
                    int cusId = resultSet.getInt("customer_id");
                    String orderStatus = resultSet.getString("order_status");
                    order = new Order(orderId, customer, orderStatus);
                }
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
        return order;
    }
}
