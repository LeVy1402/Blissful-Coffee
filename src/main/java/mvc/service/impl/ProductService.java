package mvc.service.impl;

import mvc.model.Product;
import mvc.repository.IProductRepository;
import mvc.repository.impl.ProductRepository;
import mvc.service.IProductService;

import java.util.List;

public class ProductService  implements IProductService {
    private IProductRepository iProductRepository = new ProductRepository();
    @Override
    public List<Product> selectAllProductInFeature() {
        return iProductRepository.selectAllProductInFeature();
    }

    @Override
    public List<Product> selectAllProduct() {
        return iProductRepository.selectAllProduct();
    }

    @Override
    public List<Product> searchProduct(String search) {
        return iProductRepository.searchProduct(search);
    }

    @Override
    public Product selectProductById(int id) {
        return iProductRepository.selectProductById(id);
    }

    @Override
    public List<Product> selectProductByCategory(int cateId) {
        return iProductRepository.selectProductByCategory(cateId);
    }
}
