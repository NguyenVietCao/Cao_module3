package model;

public class Customer {
   private String name;
   private String dayOfBirth;
   private String address;
   private String images;

    public Customer() {
    }

    public Customer(String name, String dayOfBirth, String address, String images) {
        this.name = name;
        this.dayOfBirth = dayOfBirth;
        this.address = address;
        this.images = images;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(String dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "name='" + name + '\'' +
                ", dayOfBirth='" + dayOfBirth + '\'' +
                ", address='" + address + '\'' +
                ", images='" + images + '\'' +
                '}';
    }
}
