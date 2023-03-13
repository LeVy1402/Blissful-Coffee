package mvc.service.impl;

import mvc.model.Customer;
import mvc.model.Order;
import mvc.repository.IOrderRepository;
import mvc.repository.impl.OrderRepository;
import mvc.service.IOrderService;

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
}
