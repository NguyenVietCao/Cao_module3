package service;

import model.Product;
import repository.IProductRepository;
import repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
   private IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> getAllProducts() {
        return productRepository.getAllProducts();
    }

    @Override
    public Product getProductById(int id) {
        return null;
    }

    @Override
    public void addProduct(Product product) {
      productRepository.addProduct(product);
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

    public void addProduct(String productName, double productPrice, String productDescription, String producer) {

    }
}
