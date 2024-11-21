package com.example.assm.model;

import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public interface ChiTietSanPhamView {
     Integer getId();
     SanPhamView getTen_san_pham();
    Integer getSo_luong_ton();
    double getGia_ban();
    String getTrang_thai();
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    Date getNgay_sua();
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    Date getNgay_tao();
    MauSacView getTen_mau();
    SizeView getTen_size();
}
