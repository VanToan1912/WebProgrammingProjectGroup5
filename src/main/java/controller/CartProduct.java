package controller;

import bean.Product;

public class CartProduct {
    int quantity;
    Product product;

    public CartProduct(int quantity, Product product) {
        this.quantity = quantity;
        this.product = product;
    }

    public CartProduct(CartProduct cartProduct) {
    }

    public int getQuantity() {
        return quantity;
    }

    public void setquantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public void increQuantity(int quantity) {
        this.quantity += quantity;
    }

    public void decreQuantity(int quantity) {
        this.quantity -= quantity;
        if ( this.quantity <= 0) this.quantity += quantity;
    }
    public int getSubtotal() {
        return (int) (quantity * product.getPrice());
    }
}

