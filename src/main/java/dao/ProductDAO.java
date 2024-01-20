package dao;

import db.JDBIConnector;
import bean.Product;

import java.util.*;

public class ProductDAO {




    public static List<Product> getAllProduct() {
        String query = "SELECT p.pdId AS pdId, p.pdName AS pdName, p.categories AS categories, " +
                "p.quanity AS quanity, p.price AS price, " +
                "i.imgUrl AS imgUrl FROM products p LEFT JOIN images i ON p.pdId = i.pdId";

        List<Product> productList = new ArrayList<>();
        Map<Integer, Product> productMap = new HashMap<>();

        try {
            JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query)
                            .map((rs, ctx) -> {
                                int productId = rs.getInt("pdId");

                                Product product;
                                if (productMap.containsKey(productId)) {
                                    // Nếu sản phẩm đã tồn tại trong map, lấy nó ra
                                    product = productMap.get(productId);
                                } else {
                                    // Nếu sản phẩm chưa tồn tại trong map, tạo mới và thêm vào map
                                    product = new Product();
                                    product.setPdid(productId);
                                    product.setPdname(rs.getString("pdName"));
                                    product.setCategories(rs.getString("categories"));
                                    product.setQuanity(rs.getInt("quanity"));
                                    product.setPrice(rs.getDouble("price"));
                                    product.setImageUrls(new ArrayList<>());

                                    productMap.put(productId, product);
                                    productList.add(product);
                                }

                                // Thêm ảnh vào danh sách
                                String imgUrl = rs.getString("imgUrl");
                                if (imgUrl != null) {
                                    product.getImageUrls().add(imgUrl);
                                }

                                return product;
                            })
                            .list()
            );
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách tất cả sản phẩm: " + e.getMessage());
            throw e;
        }
        return productList;
    }




    public static List<Product> getAllProductByCategory(String category) {
        String query = "SELECT p.pdId AS pdId, p.pdName AS pdName, p.categories AS categories, " +
                "p.quanity AS quanity, p.price AS price,  " +
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
                "p.quanity AS quanity, p.price AS price, " +
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
                "p.quanity AS quanity, p.price AS price, " +
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

    public static Product getAllProductByPdID(int pdId) {
        String query = "SELECT p.pdId AS pdId, p.pdName AS pdName, p.categories AS categories, " +
                "p.quanity AS quanity, p.price AS price, " +
                "i.imgUrl AS imgUrl FROM products p LEFT JOIN images i ON p.pdId = i.pdId " +
                "WHERE p.pdId = :pdId";

        try {
            Map<Integer, Product> productMap = new HashMap<>();

            JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query)
                            .bind("pdId", pdId)
                            .map((rs, ctx) -> {
                                int productId = rs.getInt("pdId");

                                // Nếu sản phẩm chưa được thêm vào map, thêm nó vào
                                if (!productMap.containsKey(productId)) {
                                    Product product = new Product();
                                    product.setPdid(productId);
                                    product.setPdname(rs.getString("pdName"));
                                    product.setCategories(rs.getString("categories"));
                                    product.setQuanity(rs.getInt("quanity"));
                                    product.setPrice(rs.getDouble("price"));

                                    product.setImageUrls(new ArrayList<>());

                                    productMap.put(productId, product);
                                }

                                // Thêm ảnh vào danh sách của sản phẩm
                                String imgUrl = rs.getString("imgUrl");
                                if (imgUrl != null) {
                                    productMap.get(productId).getImageUrls().add(imgUrl);
                                }

                                return null; // Không trả về giá trị vì đang xử lý dữ liệu vào map
                            })
                            .list()
            );

            // Trả về sản phẩm đầu tiên trong map (hoặc null nếu không có sản phẩm nào)
            return productMap.isEmpty() ? null : productMap.values().iterator().next();
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy sản phẩm theo pdId từ ProductDAO: " + e.getMessage());
            throw e;
        }
    }







    public static void main(String[] args) {
        try {
            // Lấy danh sách tất cả sản phẩm
            List<Product> allProducts = getAllProduct();

            System.out.println("Danh sach tat ca hinh anh va san pham:");
            printProductList(allProducts);

            // Lấy danh sách sản phẩm theo danh mục
            String category = "CAY-AN-TRAI";
            List<Product> productsByCategory = getAllProductByCategory(category);

            System.out.println("Danh sach san pham theo danh muc '" + category + "' và hinh anh:");
            printProductList(productsByCategory);

            // Lấy tổng số sản phẩm
            int totalProducts = getTotalProduct();
            System.out.println("Tong san pham: " + totalProducts);

            // Phân trang sản phẩm
            int pageIndex = 1;
            List<Product> paginatedProducts = pagingProduct(pageIndex);

            System.out.println("Danh sach san pham trang" + pageIndex + " và hinh anh:");
            printProductList(paginatedProducts);

            // Phân trang sản phẩm theo danh mục
            List<Product> paginatedProductsByCategory = pagingProductByCategory(pageIndex, category);

            System.out.println("Danh sach san pham trang" + pageIndex + " theo danh muc '" + category + "' và hình ảnh:");
            printProductList(paginatedProductsByCategory);

            // Lấy tổng số sản phẩm theo danh mục
            int totalProductsByCategory = getTotalProductByCategory(category);
            System.out.println("Tong san pham theo danh muc '" + category + "': " + totalProductsByCategory);

            int productIdToRetrieve = 1; // Đổi pdId sản phẩm cần lấy thông tin
            Product productByPdId = getAllProductByPdID(productIdToRetrieve);

            // In ra thông tin sản phẩm theo pdId để kiểm tra
            System.out.println("Thong tin san pham theo pdID'" + productIdToRetrieve + "':");
            System.out.println(productByPdId);

        } catch (Exception e) {
            System.err.println("Lỗi khi kiểm tra các phương thức: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private static void printProductList(List<Product> productList) {
        for (Product product : productList) {
            System.out.println("ID: " + product.getPdid());
            System.out.println("Thong tin san pham:");
            System.out.println("Ten: " + product.getPdname());
            System.out.println("Danh muc: " + product.getCategories());
            System.out.println("So luong: " + product.getQuanity());
            System.out.println("Gia: " + product.getPrice());

            List<String> imageUrls = product.getImageUrls();
            if (imageUrls != null && !imageUrls.isEmpty()) {
                System.out.println("Hinh anh:");
                for (String imgUrl : imageUrls) {
                    System.out.println(imgUrl);
                }
            } else {
                System.out.println("San pham khong co hinh anh.");
            }

            System.out.println("------------------------");
        }
    }




}
