package com.example.serviceuser.service;


import com.example.serviceuser.model.Customer;
import com.example.serviceuser.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public Customer findCustomer(Customer customer) {
        Customer customerFind = customerRepository.findCustomerByPhone(customer.getPhone());

        if (customerFind != null) {
            if (customerFind.getPassword().equals(customer.getPassword())) {
                return customerFind;
            }
            else{
                return null;
            }
        }
        return null;

    }

}
