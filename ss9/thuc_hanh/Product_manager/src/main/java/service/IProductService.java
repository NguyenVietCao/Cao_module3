package service;


import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAllProducts();
    Product getProductById(int id);
    void addProduct(Product product);
    void updateProduct(Product product);
    void deleteProduct(int id);
    List<Product> searchProductsByName(String name);

    public void addProduct(String productName, double productPrice, String productDescription, String producer);
}
