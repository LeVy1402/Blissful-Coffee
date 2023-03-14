package mvc.service;

import mvc.model.OrderDetail;

import java.sql.SQLException;
import java.util.List;

public interface IOrderDetailService {
    List<OrderDetail> getOrderDetailByOrderId(int i);
    void addOrderDetail(OrderDetail orderDetail);
    boolean updateOrderDetail(OrderDetail orderDetail) throws SQLException;
    boolean deleteOrderDetail(OrderDetail orderDetail) throws SQLException;
}
