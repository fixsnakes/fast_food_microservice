package com.example.voucherservice.model;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.validator.constraints.br.CPF;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

public class Voucher {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name  = "voucher_id")
    private Long voucher_id;

    @Column(name = "code")
    private String code;

    @Column(name = "discount")
    private float discount;

    @Column(name = "from_date")
    private String from_date;

    @Column(name = "to_date")
    private String to_date;
}
