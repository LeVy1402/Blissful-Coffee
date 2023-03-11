package mvc.repository;

import mvc.model.Category;
import mvc.model.OrderDetail;

import java.util.List;

public interface ICategoryRepository {
    List<Category> selectAllCategory();
}
