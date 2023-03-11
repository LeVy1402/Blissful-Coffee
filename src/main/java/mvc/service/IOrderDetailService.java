package mvc.service;

import mvc.model.OrderDetail;

import java.util.List;

public interface IOrderDetailService {
    List<OrderDetail> getOrderDetailByOrderId(int i);
}
