package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    public void addNewProduct(Product product);

    List<Product> displayListProduct();

    Product getProductById(int id);

    void editProduct(Product product);

    void deleteProduct(int id);
}
