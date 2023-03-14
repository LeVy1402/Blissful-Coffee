package mvc.repository;

import mvc.model.Customer;
import mvc.model.OrderDetail;

import java.sql.SQLException;
import java.util.List;

public interface IOrderDetailRepository {

    List<OrderDetail> getOrderDetailByOrderId(int id);

    void addOrderDetail(OrderDetail orderDetail);
    public boolean updateOrderDetail(OrderDetail orderDetail) throws SQLException;
    public boolean deleteOrderDetail(OrderDetail orderDetail) throws SQLException;
}
