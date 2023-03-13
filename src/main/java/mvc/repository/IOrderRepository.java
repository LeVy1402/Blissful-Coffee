package mvc.repository;

import mvc.model.Customer;
import mvc.model.Order;

public interface IOrderRepository {
    public void createOrderInCart(Customer customer);
    public Order findOrderInCartByCusId(Customer customer);
}
