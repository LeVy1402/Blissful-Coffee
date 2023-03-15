package mvc.repository;

import mvc.model.Customer;
import mvc.model.Wishlist;

import java.sql.SQLException;
import java.util.List;

public interface IWishListRepository {
    public List<Wishlist> selectWishListByCusId(Customer customer);

    void addWishList(Wishlist wishlist);
    public boolean deleteWishList(Wishlist wishlist) throws SQLException;
}
