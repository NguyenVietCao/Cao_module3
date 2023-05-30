package service;

import model.Customer;
import repository.CustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService{
    CustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> display() {
       List<Customer> list =  customerRepository.display();
        return list;
    }
}
