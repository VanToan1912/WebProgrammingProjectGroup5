package bean;

import org.jdbi.v3.core.mapper.reflect.ColumnName;

import java.util.List;

public class Product {
    @ColumnName("productId")
    private int productId;

    @ColumnName("productName")
    private String productName;

    @ColumnName("categories")
    private String categories;

    @ColumnName("quanity")
    private int quanity;

    @ColumnName("price")
    private double price;

    private List<String> imageUrls;

    public Product(int productId, String productName, String categories, int quanity, double price, List<String> imageUrls) {
        this.productId = productId;
        this.productName = productName;
        this.categories = categories;
        this.quanity = quanity;
        this.price = price;
        this.imageUrls = imageUrls;
    }

    public Product() {
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public int getQuanity() {
        return quanity;
    }

    public void setQuanity(int quanity) {
        this.quanity = quanity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public List<String> getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(List<String> imageUrls) {
        this.imageUrls = imageUrls;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", categories='" + categories + '\'' +
                ", quanity=" + quanity +
                ", price=" + price +
                ", imageUrls=" + imageUrls +
                '}';
    }

    public static void main(String[] args) {
        // Các kiểm thử và ví dụ sử dụng ở đây...
    }
}
