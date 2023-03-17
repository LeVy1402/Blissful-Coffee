package mvc.repository;

import mvc.model.Customer;
import mvc.model.Order;
import mvc.model.OrderDetail;

import java.sql.SQLException;
import java.util.List;

public interface IOrderRepository {
    public void createOrderInCart(Customer customer);
    public Order findOrderInCartByCusId(Customer customer);
    List<Order> selectAllCheckoutOrder(Customer customer) throws SQLException;
    boolean updateOrder(Customer customer) throws SQLException;
}
