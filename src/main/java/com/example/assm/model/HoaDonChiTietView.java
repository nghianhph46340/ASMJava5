package com.example.assm.model;

import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import java.util.Date;

public interface HoaDonChiTietView {
     Integer getId();
     HoaDonView getIdHD();
     ChiTietSanPhamView getTen_san_pham();
     Integer getSo_luong_mua();
     double getGia_ban();
     Integer getTong_tien();
     String getTrang_thai();
     Date getNgay_tao();
     Date getNgay_sua();
}
