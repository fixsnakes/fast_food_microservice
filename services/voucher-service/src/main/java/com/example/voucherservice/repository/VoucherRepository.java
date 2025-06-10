package com.example.voucherservice.repository;

import com.example.voucherservice.model.Voucher;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VoucherRepository extends JpaRepository<Voucher, Long> {
    Voucher findVoucherByCode(String code);
}
