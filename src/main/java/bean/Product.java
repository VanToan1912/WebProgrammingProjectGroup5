package bean;

import org.jdbi.v3.core.mapper.reflect.ColumnName;

import java.util.ArrayList;
import java.util.List;

public class Product {
    @ColumnName("pdId")
    private int pdid;

    @ColumnName("pdName")
    private String pdname;

    @ColumnName("categories")
    private String categories;

    @ColumnName("quanity")
    private int quanity;

    @ColumnName("price")
    private double price;

    @ColumnName("description")
    private String description;
    private List<String> imageUrls;

    public Product(int pdid, String pdname, String categories, int quanity, double price, String description, List<String> imageUrls) {
        this.pdid = pdid;
        this.pdname = pdname;
        this.categories = categories;
        this.quanity = quanity;
        this.price = price;
        this.description = description;
        this.imageUrls = imageUrls;
    }

    public Product() {
    }

    public int getPdid() {
        return pdid;
    }

    public void setPdid(int pdid) {
        this.pdid = pdid;
    }

    public String getPdname() {
        return pdname;
    }

    public void setPdname(String pdname) {
        this.pdname = pdname;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<String> getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(List<String> imageUrls) {
        this.imageUrls = imageUrls;
    }


    public static void main(String[] args) {


    }
}
