package mvc.service.impl;

import mvc.model.Rating;
import mvc.repository.IReviewRepository;
import mvc.repository.impl.ReviewRepository;
import mvc.service.IReviewService;

import java.sql.SQLException;
import java.util.List;

public class ReviewService implements IReviewService {
    private IReviewRepository iReviewRepository = new ReviewRepository();
    @Override
    public List<Rating> selectRatingById(int productId) throws SQLException {
        return iReviewRepository.selectRatingById(productId);
    }

    @Override
    public void addReview(Rating review) {
        iReviewRepository.addReview(review);
    }
}
