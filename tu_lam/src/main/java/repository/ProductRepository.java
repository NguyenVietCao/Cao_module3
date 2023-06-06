package repository;

import model.Product;
import service.ProductService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ProductRepository implements IProductRepository {
    BaseRepository baseRepository = new BaseRepository();
    private static final String INSERT_PRODUCT_SQL = "INSERT INTO Product (productName, productPrice, productDescription,productImage) VALUES (?,?,?,?);";
    private static final String LIST_PRODUCT_SQL = "SELECT * FROM Product;";

    @Override
    public void addNewProduct(Product product) {
        Connection connection = baseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT_SQL);
            preparedStatement.setString(1, product.getProductName());
            preparedStatement.setDouble(2, product.getProductPrice());
            preparedStatement.setString(3, product.getProductDescription());
            preparedStatement.setString(4, product.getProductImage());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Product> displayListProduct() {
        List<Product> productList = new ArrayList<>();
        Connection connection = baseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(LIST_PRODUCT_SQL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String productName = resultSet.getNString("productName");
                double productPrice = resultSet.getDouble("productPrice");
                String productDescription = resultSet.getString("productDescription");
                String productImage = resultSet.getString("productImage");
                Product product = new Product(id,productName,productPrice,productDescription,productImage);
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }
}
