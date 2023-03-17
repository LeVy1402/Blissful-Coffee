package mvc.repository.impl;

import mvc.model.*;
import mvc.repository.DBConnection;
import mvc.repository.IOrderRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderRepository implements IOrderRepository {
    private static final String INSERT_ORDER_INIT = "INSERT INTO `order` (`customer_id`,`order_status`) VALUES" +
            "(?,'in cart')";

    private static final String SELECT_ORDER_IN_CART = "SELECT * FROM `order` WHERE customer_id=? AND order_status='in cart'";
    private static final String SELECT_CHECKOUT_ORDER_BY_CUSTOMER_ID = "SELECT * FROM `order` join `staff` on `order`.`process_by` = `staff`.`staff_id`  join `customer` using(`customer_id`) WHERE customer_id=? AND order_status <> 'in cart'";
    private static final String UPDATE_ORDER = "UPDATE `order` SET `order_status`=`New Order` WHERE `customer_id`= ? AND `order_status`= 'in cart'";
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
                preparedStatement = connection.prepareStatement(SELECT_ORDER_IN_CART);
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

    @Override
    public List<Order> selectAllCheckoutOrder(Customer customer) throws SQLException {
        List<Order> orderList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_CHECKOUT_ORDER_BY_CUSTOMER_ID);
                preparedStatement.setInt(1, customer.getCustomerId());
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int orderId = resultSet.getInt("order_id");
                    Customer cusId = new Customer(resultSet.getInt("customer_id"), resultSet.getString("fullname"), resultSet.getDate("dob"),
                            resultSet.getBoolean("gender"), resultSet.getString("phone_number"), resultSet.getString("email"),
                            resultSet.getString("password"), resultSet.getString("profile_img"), resultSet.getString("account_status"), resultSet.getString("address"));
                    Date orderDate = resultSet.getDate("order_date");
                    String orderStatus = resultSet.getString("order_status");
                    Role role = new Role(resultSet.getInt("role_id"),null);
                    SiteInf siteInf = new SiteInf(resultSet.getInt("site_inf_id"),null,null,null,null,null);
//                    SiteInf siteInf = new SiteInf(resultSet.getInt("site_inf_id"), resultSet.getString("site_name"), resultSet.getString("description"),
//                            resultSet.getString("contact_info"), resultSet.getString("address"), resultSet.getDate("last_update"));
                    Staff processBy = new Staff(resultSet.getInt("staff_id"), resultSet.getString("fullname"), resultSet.getBoolean("gender"),
                            resultSet.getString("contact"), resultSet.getString("email"), resultSet.getString("password"),
                            resultSet.getString("profile_staff"), role, siteInf);
                    Order order = new Order(orderId, cusId, orderDate, orderStatus, processBy);
                    orderList.add(order);
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
        return orderList;
    }

    @Override
    public boolean updateOrder(Customer customer) throws SQLException {
        boolean rowUpdate = false;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
//                (int staffIdl, String fullName, String contact, String email, String userName, String passWord, int roleId, int siteInfId)
                preparedStatement = connection.prepareStatement(UPDATE_ORDER);
                preparedStatement.setInt(1, customer.getCustomerId());
                rowUpdate = preparedStatement.executeUpdate() > 0;
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return rowUpdate;
    }

}
