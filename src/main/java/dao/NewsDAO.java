package dao;

import bean.News;
import bean.Review;
import db.JDBIConnector;

import java.util.ArrayList;
import java.util.List;

public class NewsDAO {
    public static void main(String[] args) {
        List<News> list = NewsDAO.getAllNews();
        for (News review : list) {
            System.out.println(review);
        }
    }
    public static List<News> getAllNews(){
        List<News> listN = new ArrayList<>();
        String querry = "SELECT * FROM news";

        try {
            JDBIConnector.me().withHandle(handle -> handle.createQuery(querry).map((rs, ctx) -> {
                News news = new News();

                news.setNewId(rs.getInt("newId"));
                news.setProductId(rs.getInt("productID"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));

                listN.add(news);
                return news;
            }).list());
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách tất cả sản phẩm: " + e.getMessage());
            throw e;
        }
        return listN;
    }
}
