package dao;

import bean.Product;
import bean.Review;
import db.JDBIConnector;

import java.util.ArrayList;
import java.util.List;

import static com.sun.tools.attach.VirtualMachine.list;

public class ReviewDAO {
    public static void main(String[] args) {
        List<Review> list = ReviewDAO.getAllReviews();
        for (Review review : list) {
            System.out.println(review);
        }
    }
    public static List<Review> getAllReviews() {
        List<Review> listR = new ArrayList<>();
        String query = "SELECT * FROM reviews";

        try {
            JDBIConnector.me().withHandle(handle -> handle.createQuery(query).map((rs, ctx) -> {
                Review review;
                review = new Review();
                review.setReviewId(rs.getInt("reviewId"));
                review.setProductId(rs.getInt("productId"));
                review.setUserId(rs.getInt("userId"));
                review.setReview(rs.getString("review"));
                review.setDate(rs.getDate("date"));

                listR.add(review);
                return review;
            }).list());
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách tất cả sản phẩm: " + e.getMessage());
            throw e;
        }
        return listR;
    }
}
