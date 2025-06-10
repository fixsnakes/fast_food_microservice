package com.example.voucherservice.controller;

import com.example.voucherservice.model.Voucher;
import com.example.voucherservice.service.VoucherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/voucher")
public class VoucherController {

    @Autowired
    private VoucherService voucherService;

    @PostMapping
    public ResponseEntity<?> findVoucher(@RequestBody Voucher voucher) {
        Voucher voucherFound = voucherService.findVoucher(voucher);
        if (voucherFound != null) {
            return ResponseEntity.ok(voucherFound);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Voucher not found");
    }
}
