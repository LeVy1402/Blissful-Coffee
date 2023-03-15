package mvc.service;

import mvc.model.Customer;
import mvc.model.Wishlist;

import java.util.List;

public interface IWishListService {
    public List<Wishlist> selectWishListByCusId(Customer customer);
}
