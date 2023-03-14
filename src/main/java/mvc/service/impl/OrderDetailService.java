package mvc.service.impl;

import mvc.model.OrderDetail;
import mvc.repository.IOrderDetailRepository;
import mvc.repository.impl.OrderDetailRepository;
import mvc.service.IOrderDetailService;

import java.sql.SQLException;
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

    @Override
    public boolean updateOrderDetail(OrderDetail orderDetail) throws SQLException {
        return iOrderDetailRepository.updateOrderDetail(orderDetail);
    }

    @Override
    public boolean deleteOrderDetail(OrderDetail orderDetail) throws SQLException {
        return iOrderDetailRepository.deleteOrderDetail(orderDetail);
    }
}
