package model;

public class Product {
//    id, tên sản phẩm, giá sản phẩm, mô tả của sản phẩm, nhà sản xuất.
    int id;
    String productName;
    double productPrice;
    String productDescription;
    String producer;

    public Product() {
    }

    public Product(int id, String productName, double productPrice, String productDescription, String producer) {
        this.id = id;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productDescription = productDescription;
        this.producer = producer;
    }
//    public Product(String productName, double productPrice, String productDescription, String producer) {
//        super();
//        this.productName = productName;
//        this.productPrice = productPrice;
//        this.productDescription = productDescription;
//        this.producer = producer;
//    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }


}
