package service;

import model.Product;
import repository.BaseRepository;
import repository.ProductRepository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.List;

public class ProductService implements IProductService {
    private ProductRepository productRepository = new ProductRepository();

    private BaseRepository baseRepository = new BaseRepository();

    @Override
    public void addNewProduct(Product product) {
        productRepository.addNewProduct(product);
    }

    @Override
    public List<Product> displayListProduct() {
        List<Product> productList = productRepository.displayListProduct();
        return productList;
    }

    @Override
    public Product getProductById(int id) {


        return productRepository.getProductById(id);
    }

    @Override
    public void editProduct(Product product) {

        productRepository.editProduct(product);
    }

    @Override
    public void deleteProduct(int id) {
        productRepository.deleteProduct(id);
    }
}
