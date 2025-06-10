package com.example.paymentservice.service;

import com.example.paymentservice.model.Payment;
import com.example.paymentservice.repository.PaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class PaymentService {
    @Autowired
    private PaymentRepository paymentRepository;

    public Payment createPayment(Payment payment) {
        payment.setPayment_date(new Date());
        if(payment.getPayment_method().equals("CASH")) {
            payment.setPayment_status("PENDING");
        }

        return paymentRepository.save(payment);


    }
}
