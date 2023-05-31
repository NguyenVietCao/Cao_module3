package repository;


import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> getAllProducts();
    Product getProductById(int id);
    void addProduct(Product product);
    void updateProduct(Product product);
    void deleteProduct(int id);
    List<Product> searchProductsByName(String name);
}
