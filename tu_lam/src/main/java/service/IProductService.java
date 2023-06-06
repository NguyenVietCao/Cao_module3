package service;

import model.Product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public interface IProductService {
    void addNewProduct (Product product);
    List<Product> displayListProduct();

}
