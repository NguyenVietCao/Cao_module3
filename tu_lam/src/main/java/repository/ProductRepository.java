package repository;

import model.Product;
import service.ProductService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class ProductRepository implements IProductRepository {
    BaseRepository baseRepository = new BaseRepository();
    private static final String INSERT_PRODUCT_SQL = "INSERT INTO Product (productName, productPrice, productDescription,productImage) VALUES (?,?,?,?);";
    private static final String LIST_PRODUCT_SQL = "SELECT * FROM Product;";
    private static final String DELETE_USERS_SQL = "delete from Product where id = ?;";
    private static final String UPDATE_PRODUCT_BY_ID = "UPDATE Product SET productName = ?, productPrice = ?, productDescription = ?, productImage = ? WHERE id = ?;";
    private static final String SELECT_USER_BY_ID = "select * from Product where id =?";

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
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String productName = resultSet.getNString("productName");
                double productPrice = resultSet.getDouble("productPrice");
                String productDescription = resultSet.getString("productDescription");
                String productImage = resultSet.getString("productImage");
                Product product = new Product(id, productName, productPrice, productDescription, productImage);
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }

    @Override
    public Product getProductById(int id) {
        Product product = null;
        Connection connection = baseRepository.getConnection();
        try {
           PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("productName");
                double price = resultSet.getDouble("productPrice");
                String description = resultSet.getNString("productDescription");
                String image = resultSet.getNString("productImage");
                product = new Product(id, name, price, description, image);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public void editProduct(Product product) {
        Connection connection = baseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PRODUCT_BY_ID);
        preparedStatement.setString(1,product.getProductName());
        preparedStatement.setDouble(2, product.getProductPrice());
        preparedStatement.setString(3,product.getProductDescription());
        preparedStatement.setString(4,product.getProductImage());
        preparedStatement.setInt(5,product.getProductID());
        preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteProduct(int id) {
        Connection connection = baseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USERS_SQL);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
