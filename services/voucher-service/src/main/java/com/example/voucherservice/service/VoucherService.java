package com.example.voucherservice.service;

import com.example.voucherservice.model.Voucher;
import com.example.voucherservice.repository.VoucherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherService {
    @Autowired
    private VoucherRepository voucherRepository;

    public Voucher findVoucher(Voucher voucher){
        return voucherRepository.findVoucherByCode(voucher.getCode());
    }
}
