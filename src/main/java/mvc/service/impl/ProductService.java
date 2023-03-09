package mvc.service.impl;

import mvc.model.Product;
import mvc.repository.IProductRepository;
import mvc.repository.impl.ProductRepository;
import mvc.service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private IProductRepository iProductRepository = new ProductRepository();
    @Override
    public List<Product> selectAllProduct() {
        return iProductRepository.selectAllProduct();
    }

    @Override
    public List<Product> selectAllProductInFeature() {
        return iProductRepository.selectAllProductInFeature();
    }

    @Override
    public Product getProductFeature(String nameProductFeature) {
        return iProductRepository.getProductFeature(nameProductFeature);
    }
}
