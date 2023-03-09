package mvc.repository;

import mvc.model.Product;

import java.util.List;

public interface IProductRepository {
    public List<Product> selectAllProductInFeature() ;
    public List<Product> selectAllProduct() ;
}
