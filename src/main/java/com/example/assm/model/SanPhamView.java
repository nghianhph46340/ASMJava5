package com.example.assm.model;

import java.util.Date;

public interface SanPhamView {
    public Integer getId();
    public String getMa_san_pham();
    public String getTen_san_pham();
    public String getTrang_thai();
    public Date getNgay_tao();
    public Date getNgay_sua();
    public DanhMucView getTen_danh_muc();
}
