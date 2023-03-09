package mvc.repository;

import mvc.model.Product;

import java.util.List;

public interface IProductRepository {

    public  List<Product> selectAllProduct() ;
    public List<Product> selectAllProductInFeature() ;
    Product getProductFeature(String nameProductFeature);

}
