package mvc.service;

import mvc.model.Product;

import java.util.List;

public interface IProductService {
    public List<Product> selectAllProductInFeature() ;
    public List<Product> selectAllProduct() ;
    public List<Product> searchProduct(String search);
    public Product selectProductById(int id);
    public List<Product> selectProductByCategory(int cateId);

}
