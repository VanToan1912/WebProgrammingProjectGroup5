package bean;

import java.util.List;

public class AdProduct {
    private int productId;
    private String productName;
    private int categorieId;
    private int quanity;
    private double price;
//    private List<String> imageUrls;

    public AdProduct(int productId, String productName, int categorieId, int quanity, double price) {
        this.productId = productId;
        this.productName = productName;
        this.categorieId = categorieId;
        this.quanity = quanity;
        this.price = price;
//        this.imageUrls = imageUrls;
    }

    public AdProduct() {

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

    public int getCategorieId() {
        return categorieId;
    }

    public void setCategorieId(int categorieId) {
        this.categorieId = categorieId;
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

    @Override
    public String toString() {
        return "AdProduct{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", categorieId=" + categorieId +
                ", quanity=" + quanity +
                ", price=" + price +
                '}';
    }
}
