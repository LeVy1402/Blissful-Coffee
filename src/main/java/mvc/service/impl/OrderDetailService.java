package mvc.service.impl;

import mvc.model.OrderDetail;
import mvc.repository.IOrderDetailRepository;
import mvc.repository.impl.OrderDetailRepository;
import mvc.service.IOrderDetailService;

import java.util.List;

public class OrderDetailService implements IOrderDetailService {
    private IOrderDetailRepository iOrderDetailRepository = new OrderDetailRepository();
    @Override
    public List<OrderDetail> getOrderDetailByOrderId(int i) {
        return iOrderDetailRepository.getOrderDetailByOrderId(i);
    }

    @Override
    public void addOrderDetail(OrderDetail orderDetail) {
        iOrderDetailRepository.addOrderDetail(orderDetail);
    }
}
