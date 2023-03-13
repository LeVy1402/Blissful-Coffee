package mvc.service;

import mvc.model.Customer;
import mvc.model.Order;

public interface IOrderService {
    public void createOrderInCart(Customer customer);
    public Order findOrderInCartByCusId(Customer customer);
}
