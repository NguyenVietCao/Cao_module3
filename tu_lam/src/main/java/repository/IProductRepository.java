package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    public void addNewProduct(Product product);
    List<Product>displayListProduct();
}
