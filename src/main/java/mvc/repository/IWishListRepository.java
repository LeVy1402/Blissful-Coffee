package mvc.repository;

import mvc.model.Customer;
import mvc.model.Wishlist;

import java.util.List;

public interface IWishListRepository {
    public List<Wishlist> selectWishListByCusId(Customer customer);
}
