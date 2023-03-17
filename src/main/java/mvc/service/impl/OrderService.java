package mvc.service.impl;

import mvc.model.Customer;
import mvc.model.Order;
import mvc.repository.IOrderRepository;
import mvc.repository.impl.OrderRepository;
import mvc.service.IOrderService;

import java.sql.SQLException;
import java.util.List;

public class OrderService implements IOrderService {
    private IOrderRepository iOrderRepository = new OrderRepository();
    @Override
    public void createOrderInCart(Customer customer) {
        iOrderRepository.createOrderInCart(customer);
    }

    @Override
    public Order findOrderInCartByCusId(Customer customer) {
        return iOrderRepository.findOrderInCartByCusId(customer);
    }

    @Override
    public List<Order> selectAllCheckoutOrder(Customer customer) throws SQLException {
        return iOrderRepository.selectAllCheckoutOrder(customer);
    }

    @Override
    public boolean updateOrder(Customer customer) throws SQLException {
        return iOrderRepository.updateOrder(customer);
    }
}
