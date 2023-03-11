package mvc.repository;

import mvc.model.Rating;

import java.sql.SQLException;
import java.util.List;

public interface IReviewRepository {
    List<Rating> selectRatingById(int productId) throws SQLException;

    void addReview(Rating review);

}
