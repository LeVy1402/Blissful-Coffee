package mvc.repository.impl;

import mvc.model.Category;
import mvc.model.Product;
import mvc.repository.DBConnection;
import mvc.repository.ICategoryRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CategoryRepository implements ICategoryRepository {

    private static final String SELECT_ALL_CATEGORY = "SELECT * FROM `category` ";
    @Override
    public List<Category> selectAllCategory() {
        List<Category> categoryList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORY);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int categoryId = resultSet.getInt("category_id");
                    String categoryName = resultSet.getString("category_name");
                    Category category = new Category(categoryId, categoryName);
                    categoryList.add(category);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return categoryList;
    }
}
