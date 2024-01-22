package controller;

import bean.Product;
import service.ProductService;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private Map<Integer, CartProduct> data = new HashMap<>();

    public Cart(Cart otherCart) {
        for (Map.Entry<Integer, CartProduct> entry : otherCart.getData().entrySet()) {
            int productId = entry.getKey();
            CartProduct cartProduct = entry.getValue();
            this.data.put(productId, new CartProduct(cartProduct)); // Tạo bản sao của CartProduct
        }
    }

    public Cart() {
    }

//    public boolean add(int productId) {
//        return add(productId, 1);
//    }
    public boolean add(int add) {
        return add(add, 1);
    }


    public boolean add(int productId, int quantity) {
        Product product = ProductService.getInstance().getProductByPdID(productId);
        if (product == null) {
            return false; // Sản phẩm không tồn tại
        }

        CartProduct cartProduct;
        if (data.containsKey(productId)) {
            // Sản phẩm đã tồn tại trong giỏ hàng, cập nhật số lượng
            cartProduct = data.get(productId);
            cartProduct.increQuantity(quantity);
        } else {
            // Sản phẩm chưa tồn tại trong giỏ hàng, thêm mới vào
            cartProduct = new CartProduct(quantity, product);
            data.put(productId, cartProduct);
        }

        return true;
    }

    public int getTotal() {
        int total = 0;
        for (CartProduct cartProduct : data.values()) {
            total += cartProduct.getSubtotal();
        }
        return total;
    }

    public Map<Integer, CartProduct> getData() {
        return data;
    }

    public int getNumberOfItems() {
        int numberOfItems = 0;
        for (CartProduct cartProduct : data.values()) {
            numberOfItems += cartProduct.getQuantity();
        }
        return numberOfItems;
    }

    public CartProduct getProductById(int productId) {
        return data.get(productId);
    }
}
