package repository;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomer{
   private  static List<Customer> customerList = new ArrayList<>();
    static {
        customerList.add(new Customer("Cao","25/10/1988","Quang Nam",""));
        customerList.add(new Customer("Son","25/10/2000","Quang Nam",""));
        customerList.add(new Customer("Sang","25/10/2022","Quang Nam",""));
        customerList.add(new Customer("thanh","25/10/2023","Quang Nam",""));
    }

    @Override
    public List<Customer> display() {
        return customerList;
    }
}
