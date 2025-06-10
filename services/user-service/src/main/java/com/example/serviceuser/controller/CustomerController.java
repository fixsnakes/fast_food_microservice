package com.example.serviceuser.controller;


import com.example.serviceuser.model.Customer;
import com.example.serviceuser.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/customers")
public class CustomerController {

    @Autowired
    private CustomerService customerService;


    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Customer customer) {
        Customer loginAuth = customerService.findCustomer(customer);
        if (loginAuth != null) {
            return ResponseEntity.ok(loginAuth);
        }

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid username or password");

    }
}
