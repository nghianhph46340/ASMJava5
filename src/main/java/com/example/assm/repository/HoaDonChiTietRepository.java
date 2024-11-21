package com.example.assm.repository;

import com.example.assm.model.HoaDonChiTiet;
import com.example.assm.model.HoaDonChiTietView;
import com.example.assm.model.HoaDonChiTietViewSoSanh;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.ArrayList;

public interface HoaDonChiTietRepository extends JpaRepository<HoaDonChiTiet, Integer> {
    @Query(nativeQuery = true, value = "select hdct.id as id, hd.id as idHD, sp.ten_san_pham, hdct.so_luong_mua, hdct.gia_ban, hdct.tong_tien from hdct \n" +
            "join hoa_don hd on hd.id = hdct.id_hoa_don\n" +
            "join ctsp ct on ct.id = hdct.id_ctsp\n" +
            "join san_pham sp on sp.id = ct.id_sp\n" +
            "where hd.id = :idHoaDon")
    ArrayList<HoaDonChiTietView> listHoaDonChiTietTheoHoaDon(@Param("idHoaDon") Integer id);

    @Query(nativeQuery = true, value = " select hdct.id, hdct.id_ctsp from hdct where id_hoa_don=:idHoaDon")
    ArrayList<HoaDonChiTietViewSoSanh> listSS(@Param("idHoaDon") Integer id);
}
