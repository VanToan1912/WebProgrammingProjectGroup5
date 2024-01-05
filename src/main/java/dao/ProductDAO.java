package dao;

import db.JDBIConnector;
import bean.Product;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {


    public static List<Product> getAllProduct() {
        String query = "SELECT p.pdId AS pdId, p.pdName AS pdName, p.categories AS categories, " +
                "p.quanity AS quanity, p.price AS price, p.description AS description, " +
                "i.imgUrl AS imgUrl FROM products p LEFT JOIN images i ON p.pdId = i.pdId";

        List<Product> list;
        try {
            list = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query)
                            .map((rs, ctx) -> {
                                Product product = new Product();
                                product.setPdid(rs.getInt("pdId"));
                                product.setPdname(rs.getString("pdName"));
                                product.setCategories(rs.getString("categories"));
                                product.setQuanity(rs.getInt("quanity"));
                                product.setPrice(rs.getDouble("price"));
                                product.setDescription(rs.getString("description"));

                                // Thêm ảnh vào danh sách
                                String imgUrl = rs.getString("imgUrl");
                                if (product.getImageUrls() == null) {
                                    product.setImageUrls(new ArrayList<>());
                                }
                                if (imgUrl != null) {
                                    product.getImageUrls().add(imgUrl);
                                }

                                return product;
                            })
                            .list()
            );

        } catch (Exception e) {
            // Xử lý exception nếu có
            System.err.println("Lỗi khi lấy danh sách sản phẩm: " + e.getMessage());
            throw e; // hoặc xử lý lỗi tùy theo yêu cầu của bạn
        }
        return list;
    }

    public static List<Product> getAllProductByCategory(String category) {
        String query = "SELECT p.pdId AS pdId, p.pdName AS pdName, p.categories AS categories, " +
                "p.quanity AS quanity, p.price AS price, p.description AS description, " +
                "i.imgUrl AS imgUrl FROM products p LEFT JOIN images i ON p.pdId = i.pdId " +
                "WHERE p.categories = :category";

        List<Product> list;
        try {
            list = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query)
                            .bind("category", category)
                            .map((rs, ctx) -> {
                                Product product = new Product();
                                product.setPdid(rs.getInt("pdId"));
                                product.setPdname(rs.getString("pdName"));
                                product.setCategories(rs.getString("categories"));
                                product.setQuanity(rs.getInt("quanity"));
                                product.setPrice(rs.getDouble("price"));
                                product.setDescription(rs.getString("description"));

                                // Thêm ảnh vào danh sách
                                String imgUrl = rs.getString("imgUrl");
                                if (product.getImageUrls() == null) {
                                    product.setImageUrls(new ArrayList<>());
                                }
                                if (imgUrl != null) {
                                    product.getImageUrls().add(imgUrl);
                                }

                                return product;
                            })
                            .list()
            );
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách sản phẩm theo danh mục: " + e.getMessage());
            throw e;
        }
        return list;
    }



    // đêm số lượng sản phẩm trong db
    public static int getTotalProduct() {
        String query = "SELECT COUNT(*) FROM products";
        int total = 0;
        try {
            total = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query).mapTo(Integer.class).one()
            );
        } catch (Exception e) {
            // Handle the exception as needed
            System.err.println("Lỗi khi lấy tổng số sản phẩm: " + e.getMessage());
            throw e; // or handle the error according to your requirements
        }
        return total;
    }

    public static List<Product> pagingProduct(int pageIndex) {
        List<Product> list = new ArrayList<>();
        int pageSize = 12; // Số lượng sản phẩm trên mỗi trang
        int pageOffset = (pageIndex - 1) * pageSize; // Tính vị trí bắt đầu cho trang hiện tại

        String query = "SELECT p.pdId AS pdId, p.pdName AS pdName, p.categories AS categories, " +
                "p.quanity AS quanity, p.price AS price, p.description AS description, " +
                "i.imgUrl AS imgUrl FROM products p LEFT JOIN images i ON p.pdId = i.pdId " +
                "ORDER BY p.pdid LIMIT :pageSize OFFSET :pageOffset";

        try {
            return JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query)
                            .bind("pageSize", pageSize)
                            .bind("pageOffset", pageOffset)
                            .map((rs, ctx) -> {
                                Product product = new Product();
                                product.setPdid(rs.getInt("pdId"));
                                product.setPdname(rs.getString("pdName"));
                                product.setCategories(rs.getString("categories"));
                                product.setQuanity(rs.getInt("quanity"));
                                product.setPrice(rs.getDouble("price"));
                                product.setDescription(rs.getString("description"));

                                // Thêm ảnh vào danh sách
                                String imgUrl = rs.getString("imgUrl");
                                if (product.getImageUrls() == null) {
                                    product.setImageUrls(new ArrayList<>());
                                }
                                if (imgUrl != null) {
                                    product.getImageUrls().add(imgUrl);
                                }

                                return product;
                            })
                            .list()
            );
        } catch (Exception e) {
            // Xử lý ngoại lệ nếu cần thiết
            System.err.println("Lỗi khi phân trang sản phẩm: " + e.getMessage());
            throw e;
        }
    }

    public static List<Product> pagingProductByCategory(int pageIndex, String category) {
        int pageSize = 12;
        int pageOffset = (pageIndex - 1) * pageSize;

        String query = "SELECT p.pdId AS pdId, p.pdName AS pdName, p.categories AS categories, " +
                "p.quanity AS quanity, p.price AS price, p.description AS description, " +
                "i.imgUrl AS imgUrl FROM products p LEFT JOIN images i ON p.pdId = i.pdId " +
                "WHERE p.categories = :category " +
                "ORDER BY p.pdid LIMIT :pageSize OFFSET :pageOffset";

        try {
            return JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query)
                            .bind("category", category)
                            .bind("pageSize", pageSize)
                            .bind("pageOffset", pageOffset)
                            .map((rs, ctx) -> {
                                Product product = new Product();
                                product.setPdid(rs.getInt("pdId"));
                                product.setPdname(rs.getString("pdName"));
                                product.setCategories(rs.getString("categories"));
                                product.setQuanity(rs.getInt("quanity"));
                                product.setPrice(rs.getDouble("price"));
                                product.setDescription(rs.getString("description"));

                                // Thêm ảnh vào danh sách
                                String imgUrl = rs.getString("imgUrl");
                                if (product.getImageUrls() == null) {
                                    product.setImageUrls(new ArrayList<>());
                                }
                                if (imgUrl != null) {
                                    product.getImageUrls().add(imgUrl);
                                }

                                return product;
                            })
                            .list()
            );
        } catch (Exception e) {
            System.err.println("Lỗi khi phân trang sản phẩm theo danh mục: " + e.getMessage());
            throw e;
        }
    }


    public static int getTotalProductByCategory(String category) {
        String query = "SELECT COUNT(*) FROM products WHERE categories = :category";
        int total = 0;
        try {
            total = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query)
                            .bind("category", category)
                            .mapTo(Integer.class)
                            .one()
            );
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy tổng số sản phẩm theo danh mục: " + e.getMessage());
            throw e;
        }
        return total;
    }


    public static void main(String[] args) {
        try {
            // Lấy danh sách tất cả sản phẩm
            List<Product> allProducts = getAllProduct();

            System.out.println("Danh sách tất cả sản phẩm và hình ảnh:");
            printProductList(allProducts);

            // Lấy danh sách sản phẩm theo danh mục
            String category = "CAY_AN_TRAI";
            List<Product> productsByCategory = getAllProductByCategory(category);

            System.out.println("Danh sách sản phẩm theo danh mục '" + category + "' và hình ảnh:");
            printProductList(productsByCategory);

            // Lấy tổng số sản phẩm
            int totalProducts = getTotalProduct();
            System.out.println("Tổng số sản phẩm: " + totalProducts);

            // Phân trang sản phẩm
            int pageIndex = 1;
            List<Product> paginatedProducts = pagingProduct(pageIndex);

            System.out.println("Danh sách sản phẩm trang " + pageIndex + " và hình ảnh:");
            printProductList(paginatedProducts);

            // Phân trang sản phẩm theo danh mục
            List<Product> paginatedProductsByCategory = pagingProductByCategory(pageIndex, category);

            System.out.println("Danh sách sản phẩm trang " + pageIndex + " theo danh mục '" + category + "' và hình ảnh:");
            printProductList(paginatedProductsByCategory);

            // Lấy tổng số sản phẩm theo danh mục
            int totalProductsByCategory = getTotalProductByCategory(category);
            System.out.println("Tổng số sản phẩm theo danh mục '" + category + "': " + totalProductsByCategory);

        } catch (Exception e) {
            System.err.println("Lỗi khi kiểm tra các phương thức: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private static void printProductList(List<Product> productList) {
        for (Product product : productList) {
            System.out.println("ID: " + product.getPdid());

            List<String> imageUrls = product.getImageUrls();
            if (imageUrls != null && !imageUrls.isEmpty()) {
                System.out.println("Hình ảnh:");
                for (String imageUrl : imageUrls) {
                    System.out.println(imageUrl);
                }
            }

            System.out.println("------------------------");
        }
    }

}
