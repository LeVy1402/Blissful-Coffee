package mvc.service;

import mvc.model.Product;
import mvc.repository.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public interface IProductService {
    public List<Product> selectAllProduct() ;
    public List<Product> selectAllProductInFeature() ;
    Product getProductFeature(String nameProductFeature);


}
