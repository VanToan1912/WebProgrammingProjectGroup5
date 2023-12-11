package model;

import org.jdbi.v3.core.mapper.reflect.ColumnName;

public class Product {
    @ColumnName("pdId")
    private int id;

    @ColumnName("pdName")
    private String name;

    @ColumnName("categories")
    private String categories;

    @ColumnName("quanity")
    private int quantity;

    private int quanity;

    @ColumnName("price")
    private double price;

    @ColumnName("description")
    private String description;

    public Product(int id, String name, String categories, int quantity, double price, String description) {
        this.id = id;
        this.name = name;
        this.categories = categories;
        this.quanity = quantity;
        this.price = price;
        this.description = description;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public int getQuantity() {
        return quanity;
    }

    public void setQuantity(int quantity) {
        this.quanity = quantity;
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

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", categories='" + categories + '\'' +
                ", quanity=" + quanity +
                ", price=" + price +
                ", description='" + description + '\'' +
                '}';
    }
// Constructors, getters, setters, and toString method...

}
