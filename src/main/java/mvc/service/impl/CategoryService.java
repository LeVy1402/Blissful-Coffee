package mvc.service.impl;

import mvc.model.Category;
import mvc.repository.ICategoryRepository;
import mvc.repository.impl.CategoryRepository;
import mvc.service.ICategoryService;

import java.util.List;

public class CategoryService implements ICategoryService {
    ICategoryRepository iCategoryRepository = new CategoryRepository();
    @Override
    public List<Category> selectAllCategory() {
        return iCategoryRepository.selectAllCategory();
    }
}
