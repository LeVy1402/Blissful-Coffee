package mvc.service.impl;

import mvc.model.Customer;
import mvc.model.Wishlist;
import mvc.repository.IWishListRepository;
import mvc.repository.impl.WishListRepository;
import mvc.service.IWishListService;

import java.util.List;

public class WishListService implements IWishListService {
    private IWishListRepository iWishListRepository = new WishListRepository();

    @Override
    public List<Wishlist> selectWishListByCusId(Customer customer) {
        return iWishListRepository.selectWishListByCusId(customer);
    }
}
