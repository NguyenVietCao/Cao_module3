package repository;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"Civic2020",122,"civic","Honda"));
        productList.add(new Product(2,"Civic2020",1224,"civic","Honda"));
        productList.add(new Product(3,"Civic2020",1224,"civic","Honda"));
    }
    @Override
    public List<Product> getAllProducts() {
        // ket noi db
        return productList;
    }

    @Override
    public Product getProductById(int id) {
        return null;
    }

    @Override
    public void addProduct(Product product) {
        // ket noi db va luu vao db
    productList.add(product);
    }

    @Override
    public void updateProduct(Product product) {

    }

    @Override
    public void deleteProduct(int id) {

    }

    @Override
    public List<Product> searchProductsByName(String name) {
        return null;
    }
}
