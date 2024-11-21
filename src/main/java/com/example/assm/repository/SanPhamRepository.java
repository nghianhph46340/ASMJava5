package com.example.assm.repository;

import com.example.assm.model.SanPham;
import com.example.assm.model.SanPhamView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.ArrayList;

public interface SanPhamRepository extends JpaRepository<SanPham, Integer> {
    @Query(nativeQuery = true, value = "select sp.id, sp.ma_san_pham, sp.ten_san_pham, sp.trang_thai, sp.ngay_tao, sp.ngay_sua, dm.ten_danh_muc  from san_pham sp\n" +
            "join danh_muc dm on dm.id = sp.id_danh_muc")
    ArrayList<SanPhamView> listSanPham();

}
