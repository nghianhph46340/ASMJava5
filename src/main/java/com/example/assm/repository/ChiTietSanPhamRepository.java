package com.example.assm.repository;

import com.example.assm.model.ChiTietSanPham;
import com.example.assm.model.ChiTietSanPhamView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.ArrayList;

public interface ChiTietSanPhamRepository extends JpaRepository<ChiTietSanPham, Integer> {
    @Query(nativeQuery = true, value = "  select ctsp.id, sp.ten_san_pham, ctsp.so_luong_ton, ctsp.gia_ban, ctsp.trang_thai, ctsp.ngay_sua, ctsp.ngay_tao, ms.ten_mau, s.ten_size  from ctsp join san_pham sp on sp.id = ctsp.id_sp\n" +
            "  join mau_sac ms on ms.id = ctsp.id_mau_sac \n" +
            "  join size s on s.id = ctsp.id_size\n" +
            "  where sp.id = :idSanPham")
    ArrayList<ChiTietSanPhamView> listCTSPtheoSP(@Param("idSanPham") Integer id);
    @Query(nativeQuery = true, value = "  select ctsp.id, sp.ten_san_pham, ctsp.so_luong_ton, ctsp.gia_ban, ctsp.trang_thai, ctsp.ngay_sua, ctsp.ngay_tao, ms.ten_mau, s.ten_size  from ctsp join san_pham sp on sp.id = ctsp.id_sp\n" +
            "  join mau_sac ms on ms.id = ctsp.id_mau_sac \n" +
            "  join size s on s.id = ctsp.id_size\n"+
            "  ORDER BY sp.ten_san_pham ASC")
    ArrayList<ChiTietSanPhamView> listCTSPtheoSPBanHang();
}
