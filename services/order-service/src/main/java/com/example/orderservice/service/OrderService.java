package com.example.orderservice.service;

import com.example.orderservice.model.Order;
import com.example.orderservice.model.OrderDetail;
import com.example.orderservice.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    public Order createOrder(Order order) {
        order.setOrder_date(new Date());
        order.setOrder_status("Created");


        for (OrderDetail orderDetail : order.getOrderDetails()) {
            orderDetail.setOrder(order);
        }

        return orderRepository.save(order);
    }
}
