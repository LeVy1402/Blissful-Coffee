package mvc.repository;

import mvc.model.OrderDetail;
import mvc.model.Staff;

import java.util.List;

public interface IOrderDetailRepository {

    List<OrderDetail> getOrderDetailByOrderId(int id);
}
