package dao;

import db.JDBIConnector;
import bean.Product;

import java.util.*;

    public class ProductDAO {



        public static List<Product> getAllProduct() {
            String query = "SELECT p.pdId AS pdId, p.pdName AS pdName, p.categories AS categories, " +
                    "p.quanity AS quanity, p.price AS price, " +
                    "GROUP_CONCAT(i.imgUrl) AS imgUrls FROM products p " +
                    "LEFT JOIN images i ON p.pdId = i.pdId " +
                    "GROUP BY p.pdId, p.pdName, p.categories, p.quanity, p.price";

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

                                    // Thêm ảnh vào danh sách
                                    String imgUrls = rs.getString("imgUrls");
                                    if (product.getImageUrls() == null) {
                                        product.setImageUrls(new ArrayList<>());
                                    }
                                    if (imgUrls != null) {
                                        product.getImageUrls().addAll(Arrays.asList(imgUrls.split(",")));
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
                    "p.quanity AS quanity, p.price AS price, " +
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
                    "p.quanity AS quanity, p.price AS price,  " +
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
                    "p.quanity AS quanity, p.price AS price,  " +
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

        public static Product getAllProductByPdID(int pdId)         {
            String query = "SELECT p.pdId AS pdId, p.pdName AS pdName, p.categories AS categories, " +
                    "p.quanity AS quanity, p.price AS price,  " +
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
            testGetAllProduct();
//            testGetAllProductByCategory("CAY BONSAI");
//            testGetTotalProduct();
            testPagingProduct(1);
//            testPagingProductByCategory(1, "CÂY ĂN TRÁI");
//            testGetTotalProductByCategory("CÂY ĂN TRÁI");
//            testGetAllProductByPdID(1);
        }

        public static void testGetAllProduct() {
            List<Product> productList = getAllProduct();
            System.out.println("----- Test getAllProduct -----");
            printProductList(productList);
        }

        public static void testGetAllProductByCategory(String category) {
            List<Product> productList = getAllProductByCategory(category);
            System.out.println("----- Test getAllProductByCategory -----");
            printProductList(productList);
        }

        public static void testGetTotalProduct() {
            int total = getTotalProduct();
            System.out.println("----- Test getTotalProduct -----");
            System.out.println("Total Products: " + total);
        }

        public static void testPagingProduct(int pageIndex) {
            List<Product> productList = pagingProduct(pageIndex);
            System.out.println("----- Test pagingProduct -----");
            printProductList(productList);
        }

        public static void testPagingProductByCategory(int pageIndex, String category) {
            List<Product> productList = pagingProductByCategory(pageIndex, category);
            System.out.println("----- Test pagingProductByCategory -----");
            printProductList(productList);
        }

        public static void testGetTotalProductByCategory(String category) {
            int total = getTotalProductByCategory(category);
            System.out.println("----- Test getTotalProductByCategory -----");
            System.out.println("Total Products in category '" + category + "': " + total);
        }

        public static void testGetAllProductByPdID(int pdId) {
            Product product = getAllProductByPdID(pdId);
            System.out.println("----- Test getAllProductByPdID -----");
            if (product != null) {
                System.out.println(product);
            } else {
                System.out.println("Product with ID " + pdId + " not found.");
            }
        }

        private static void printProductList(List<Product> productList) {
            for (Product product : productList) {
                System.out.println(product);
                System.out.println("------------------------");
            }
        }



    }