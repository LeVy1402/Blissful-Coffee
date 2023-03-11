package mvc.repository;

import mvc.model.Product;

import java.util.List;

public interface IProductRepository {
    public List<Product> selectAllProductInFeature() ;
    public List<Product> selectAllProduct() ;
    public List<Product> searchProduct(String search);
    public Product selectProductById(int id);
    public List<Product> selectProductByCategory(int cateId);
}
