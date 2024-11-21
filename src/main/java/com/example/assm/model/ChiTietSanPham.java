package com.example.assm.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "ctsp")
public class ChiTietSanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "id_sp")
    private SanPham sp;
    @ManyToOne
    @JoinColumn(name = "id_mau_sac")
    private MauSac mauSac;
    @ManyToOne
    @JoinColumn(name = "id_size")
    private Size size;
    private double gia_ban;
    private Integer so_luong_ton;
    private String trang_thai;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date ngay_tao;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date ngay_sua;

    @Override
    public String toString() {
        return "ChiTietSanPham{" +
                "id=" + id +
                ", sp=" + sp +
                ", mauSac=" + mauSac +
                ", size=" + size +
                ", gia_ban=" + gia_ban +
                ", so_luong_ton=" + so_luong_ton +
                ", trang_thai='" + trang_thai + '\'' +
                ", ngay_tao=" + ngay_tao +
                ", ngay_sua=" + ngay_sua +
                '}';
    }
}
