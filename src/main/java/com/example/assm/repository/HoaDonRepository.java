package com.example.assm.repository;

import com.example.assm.model.HoaDon;
import com.example.assm.model.HoaDonView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.ArrayList;

public interface HoaDonRepository extends JpaRepository<HoaDon, Integer> {
    @Query(nativeQuery = true, value = "select distinct hd.id, kh.ho_ten, hd.trang_thai, hd.ngay_tao from hoa_don hd\n" +
            "left join khach_hang kh on kh.id = hd.id_khach_hang where hd.trang_thai=N'Chưa thanh toán' order by hd.id desc")
    ArrayList<HoaDonView> listHoaDonTong();
    @Query(nativeQuery = true, value = "select distinct hd.id, kh.ho_ten, hd.trang_thai, hd.ngay_tao from hoa_don hd\n" +
            "left join khach_hang kh on kh.id = hd.id_khach_hang ")
    ArrayList<HoaDonView> listHoaDonTong2();
}
