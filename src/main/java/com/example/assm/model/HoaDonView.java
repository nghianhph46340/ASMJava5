package com.example.assm.model;

import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import java.util.Date;

public interface HoaDonView {
     Integer getId();
     KhachHangView getHo_ten();
     String getTrang_thai();
     Date getNgay_tao();
     Date getNgay_sua();
     String getDia_chi();
     String getSo_dien_thoai();
}
