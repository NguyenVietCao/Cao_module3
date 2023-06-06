package service;

import model.Product;
import repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
   private ProductRepository productRepository = new ProductRepository();


    @Override
    public void addNewProduct(Product product) {
    productRepository.addNewProduct(product);
    }

    @Override
    public List<Product> displayListProduct() {
        List<Product> productList = productRepository.displayListProduct();
        return productList;
    }
}
