package com.example.paymentservice.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;


@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Table(name = "payment")
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "payment_id")
    private Long payment_id;

    private Long order_id;

    private String payment_method;

    private String payment_status;

    private Date payment_date;

    private float amount;
}
