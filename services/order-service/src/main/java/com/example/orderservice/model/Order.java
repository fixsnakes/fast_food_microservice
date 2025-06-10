package com.example.orderservice.model;


import jakarta.persistence.*;
import lombok.*;

import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private Long order_id;

    @Column(name = "total_amount")
    private float total_amount;

    @Column(name = "order_date")
    private Date order_date;

    @Column(name = "order_type")
    private String order_type;

    @Column(name = "order_status")
    private String order_status;

    @Column(name = "customer_id")
    private Long customer_id;

    @Column(name = "voucher_id")
    private String voucher_id;

    @Column(name = "shipping_address")
    private String shipping_address;

    @OneToMany(mappedBy = "order",cascade = CascadeType.ALL)
    private List<OrderDetail> orderDetails;
}

