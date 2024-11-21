<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        .sidebar {
            height: 100vh;
            background-color: #f8f9fa;
        }

        .main-content {
            height: 100vh;
            overflow-y: auto;
        }

        .dashboard {
            background-color: bisque;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-3 col-lg-2 d-md-block sidebar collapse">
            <div class="position-sticky pt-3">
                <h2 class="h4 px-3 pb-3 border-bottom">Agoni</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="/trang-chu">
                            <i class="bi bi-house-door"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item dashboard">
                        <a class="nav-link active" href="/ban-hang">
                            <i class="bi bi-cart"></i> Đơn hàng
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/san-pham">
                            <i class="bi bi-box"></i> Sản phẩm
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/khach-hang">
                            <i class="bi bi-people"></i> Khách hàng
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/hoa-don">
                            <i class="bi bi-receipt"></i> Quản lý hóa đơn
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/danh-muc">
                            <i class="bi bi-people"></i> Danh mục
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content">
            <!-- Header -->
            <header class="navbar navbar-light sticky-top bg-light flex-md-nowrap p-0 border-bottom">
                <div class="navbar-brand col-md-3 col-lg-2 me-0 px-3">Admin Dashboard</div>
                <input class="form-control w-50" type="text" placeholder="Tìm kiếm sản phẩm..." aria-label="Search"
                       id="productSearch">
                <div class="navbar-nav">
                    <div class="nav-item text-nowrap">
                        <a class="nav-link px-3" href="#"><i class="bi bi-bell"></i></a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#" class="d-flex align-items-center text-decoration-none dropdown-toggle"
                       id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end text-small shadow" aria-labelledby="dropdownUser1">
                        <li><a class="dropdown-item" href="#">Hồ sơ</a></li>
                        <li><a class="dropdown-item" href="#">Cài đặt</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Đăng xuất</a></li>
                    </ul>
                </div>
            </header>

            <!-- Sales Interface Content -->
            <div class="container mt-4">

                <h1 class="h2 mb-4">Bán hàng</h1>

                <div class="row mb-4">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Danh sách sản phẩm</h5>
                                <div class="overflow-y-auto" style="max-height: 300px">
                                    <table class="table" id="productTable">
                                        <thead>
                                        <tr class="text-center">
                                            <th>STT</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Số lượng</th>
                                            <th>Giá bán</th>
                                            <th>Trạng thái</th>
                                            <%--                                        <th>Ngày sửa</th>--%>
                                            <%--                                        <th>Ngày tạo</th>--%>
                                            <th>Màu sắc</th>
                                            <th>Size</th>

                                            <th>Hành động</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        <!-- Product rows will be dynamically added here -->
                                        <c:forEach items="${listSPBanHang}" var="spbh" varStatus="c">
                                            <tr>
                                                <td>${c.count}</td>
                                                <td>${spbh.ten_san_pham}</td>
                                                <td>${spbh.so_luong_ton}</td>
                                                <td>${spbh.gia_ban}</td>
                                                <td>${spbh.trang_thai}</td>
                                                    <%--                                            <td>${spbh.ngay_sua}</td>--%>
                                                    <%--                                            <td>${spbh.ngay_tao}</td>--%>
                                                <td>${spbh.ten_mau}</td>
                                                <td>${spbh.ten_size}</td>
                                                <td class="d-flex ">
                                                    <form action="/ban-hang/addHDCT" method="post" class="d-flex">
                                                        <button style="width: 30px;" type="button"
                                                                class="btn btn-warning d-flex justify-content-center "
                                                                name="action" onclick="giam('changeSL${c.index}');"
                                                                value="giam">-
                                                        </button>
                                                        <input type="text" value="1" id="changeSL${c.index}"
                                                               name="chonSL" min="1"
                                                               max="${spbh.so_luong_ton}"
                                                               style="width: 30px; outline: none; text-align: center; border: beige; background-color: bisque">
                                                        <button style="width: 30px;" type="button"
                                                                class="btn btn-warning d-flex justify-content-center"
                                                                name="action"
                                                                onclick="tang('changeSL${c.index}', ${spbh.so_luong_ton});"
                                                                value="tang">+
                                                        </button>

                                                        <input type="hidden" value="1" name="minSoluong">
                                                        <input type="hidden" value="${spbh.so_luong_ton}"
                                                               name="maxSoluong">
                                                        <input type="hidden" name="idSanPham" value="${spbh.id}">
                                                        <input type="hidden" name="idHoaDon" value="${idHoaDon}">

                                                        <button type="submit" class="btn btn-primary">Thêm</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <%--                        Hóa đơn--%>
                        <div class="card mt-5">
                            <div class="card-body">
                                <h5 class="card-title">Danh sách hóa đơn</h5>
                                <%-- Tạo hóa đơn mới--%>
                                <%--                                <form action="/ban-hang/hoa-don/add" method="post">--%>
                                <%--                                    <a href="/ban-hang/hoa-don/add">--%>
                                <button data-bs-toggle="modal"
                                        data-bs-target="#addProductModal" class="btn btn-primary mb-3"
                                        type="button"
                                        onclick="return confirm('Bạn muốn tạo hóa đơn mới?')"
                                        id="addInvoiceBtn">Tạo
                                    hóa đơn mới
                                </button>
                                <%--                                    </a>--%>
                                <%--                                </form>--%>
                                <div class="overflow-y-auto" style="max-height: 300px">
                                    <table class="table table-hover" id="invoiceTable">
                                        <thead>
                                        <tr>
                                            <%--                                        <th>#</th>--%>
                                            <th>Mã hóa đơn</th>
                                            <th>Khách hàng</th>
                                            <th>Ngày tạo</th>
                                            <th>Trạng thái</th>
                                            <%--                                            <th>Action</th>--%>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${listHoaDonTong}" var="lstHd" varStatus="c">
                                            <tr>
                                                    <%--                                            <td>${c.count}</td>--%>
                                                <td>${lstHd.id}</td>
                                                <td><c:if test="${not empty lstHd.ho_ten}">
                                                    ${lstHd.ho_ten}
                                                </c:if>
                                                    <c:if test="${empty lstHd.ho_ten}">
                                                        <button data-bs-toggle="modal"
                                                                data-bs-target="#themKhachHang" type="button" onclick="getData(this, ${lstHd.id});" class="btn btn-primary">+</button>
                                                    </c:if>
                                                </td>
                                                    <%--                                                <td>--%>
                                                    <%--                                                    --%>
                                                    <%--                                                </td>--%>
                                                <td>${lstHd.ngay_tao}</td>
                                                <td>${lstHd.trang_thai}</td>
                                                <td><a href="/ban-hang/hoa-don/${lstHd.id}">
                                                    <button class="btn btn-primary">Xem</button>
                                                </a></td>
                                                    <%--                                                <td><a href="/ban-hang/hoa-don/${lstHd.id}">--%>
                                                    <%--                                                    <button class="btn btn-sussces">Xem</button>--%>
                                                    <%--                                                </a></td>--%>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 overflow-y-auto">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Chi tiết hóa đơn ${idHoaDon}</h5>
                                <table class="table table-hover" id="invoiceDetailTable">
                                    <thead>
                                    <tr>
                                        <th>Sản phẩm</th>
                                        <th>Số lượng</th>
                                        <th>Đơn giá</th>
                                        <th>Thành tiền</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listHoaDonChiTietHD}" var="lstHdct" varStatus="c">
                                        <tr data-bs-toggle="modal"
                                            data-bs-target="#invoiceModalShowHD"
                                            onclick="setRowData(this, ${lstHdct.id});">
                                                <%--<td>${c.count}</td>--%>
                                            <td>${lstHdct.ten_san_pham}</td>
                                            <td>${lstHdct.so_luong_mua}</td>
                                            <td>${lstHdct.gia_ban}</td>
                                            <td>${lstHdct.tong_tien}</td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <div class="d-flex justify-content-between align-items-center mt-3 sticky-top">
                                    <h5>Tổng cộng: <span id="invoiceTotal">${tongTien}</span></h5>


                                    <form action="/thanh-toan" method="post">
                                        <a href="/thanh-toan">
                                            <button disabled type="submit" class="btn btn-success" id="paymentBtn">Thanh
                                                toán
                                            </button>
                                        </a>
                                    </form>

                                </div>
                                <form action="/tinh-tien" method="post">
                                    <div class="input-group mb-3 mt-2">
                                        <input type="hidden" name="tongTien" id="tongTien" value="${tongTien}">
                                        <span class="input-group-text">$</span>
                                        <input id="tienKhachDua" oninput="tinhTienThua();" type="text"
                                               class="form-control"
                                               name="tienKhachDua" placeholder="Tiền khách đưa"
                                               aria-label="Amount (to the nearest dollar)">
                                        <span class="input-group-text">.00</span>
                                    </div>
                                    <h5><span id="tienThua">${tienThua}</span></h5>
                                </form>
                                <h4>${thongBao}</h4>
                                <h3>${maxSP}</h3>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8">

                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<%--Thêm khách hàng vào hóa đơn--%>
<div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="addProductModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addProductModalLabel">Thêm sản phẩm mới</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/ban-hang/hoa-don/add" method="post">
                <div class="modal-body">
                    <a href="/khach-hang/add">Chưa có khách hang?</a>
                    <table class="table">
                        <tr>
                            <th>#</th>
                            <th>Họ tên</th>
                            <th>Địa chỉ</th>
                            <th>SĐT</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach items="${listKH}" var="kh" varStatus="c">
                            <tr>
                                <td>${c.count}</td>
                                <td>${kh.ho_ten}</td>
                                <td>${kh.dia_chi}</td>
                                <td>${kh.sdt}</td>
                                <td>
                                    <button name="idKhach" value="${kh.id}" type="submit" class="btn btn-primary">Thêm
                                        khách hàng vào giỏ hàng
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </form>

        </div>
    </div>
</div>

//Cập nhật khách hàng vào giỏ hàng
<div class="modal fade" id="themKhachHang" tabindex="-1" aria-labelledby="addProductModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addProductModalLabel">Thêm sản phẩm mới</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/ban-hang/hoa-don/udpate" method="post">
                <div class="modal-body">
                    <table class="table">
                        <tr>
                            <th>#</th>
                            <th>Họ tên</th>
                            <th>Địa chỉ</th>
                            <th>SĐT</th>
                            <th>Action</th>
                        </tr>
                        <input type="hidden" value="" id="idHoaDonKH" name="idHoaDonKH">
                        <c:forEach items="${listKH}" var="kh" varStatus="c">
                            <tr>
                                <td>${c.count}</td>
                                <td>${kh.ho_ten}</td>
                                <td>${kh.dia_chi}</td>
                                <td>${kh.sdt}</td>
                                <td>
                                    <button name="idKhach" value="${kh.id}" type="submit" class="btn btn-primary">Thêm
                                        khách hàng vào giỏ hàng
                                    </button>

                                </td>
                            </tr>
                        </c:forEach>
                        <a href="/khach-hang/add">Chưa có khách hàng?</a>
                    </table>

                </div>
            </form>

        </div>
    </div>
</div>

<div class="modal fade" id="invoiceModal" tabindex="-1" aria-labelledby="invoiceModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="invoiceModalLabel">Hóa đơn thanh toán</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p><strong>Khách hàng:</strong> <span id="modalTenKH"></span></p>
                <p><strong>Tổng tiền:</strong> <span id="modalTongTien"></span></p>
                <p><strong>Tiền khách đưa:</strong> <span id="modalTienKhachDua"></span></p>
                <p><strong>Tiền thừa trả khách:</strong> <span id="modalTienThua"></span></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary" onclick="printInvoice()">In hóa đơn</button>
            </div>
        </div>
    </div>
</div>

<%--Đọc số lượng sản phẩm --%>
<div class="modal fade" id="invoiceModalShowHD" tabindex="-1" aria-labelledby="invoiceModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="invoiceModalLabel">Chỉnh sửa số lượng</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="/change/hdct" method="post">
                    <div class="mb-3">
                        <label for="productName" class="form-label">Số lượng</label>
                        <input type="number" min="0" id="popupInput" max="${maxSP}" class="form-control" name="soLuongSPHDCT">
                        <input type="hidden" id="idHDCT" name="idHDCT" value="">
                    </div>
                    <div class="modal-footer">

                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                        <button type="submit" formaction="/change/hdct" class="btn btn-primary">Xác nhận</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    var selectedRow;  // Biến để lưu trữ dòng được click

    // Lưu dòng đã được click để chỉnh sửa
    function setRowData(row, idHDCT) {
        selectedRow = row;
        var idHDct = idHDCT;
        var currentData = selectedRow.cells[1].innerText; // Lấy dữ liệu hiện tại từ ô cột "Dữ liệu"
        document.getElementById("popupInput").value = currentData; // Hiển thị dữ liệu trong popup
        document.getElementById("idHDCT").value = idHDct; // Hiển thị dữ liệu trong popup

    }

    function getData(row, idHoaDonKhach) {
        selectedRow = row;
        console.log(row);
        document.getElementById("idHoaDonKH").value = idHoaDonKhach; // Hiển thị dữ liệu trong popup
    }

    function giam(inputId) {
        let input = document.getElementById(inputId);
        let soLuongs = parseInt(input.value); // Chuyển đổi giá trị từ string sang số
        if (soLuongs > 1) { // Kiểm tra nếu số lượng lớn hơn 1
            input.value = soLuongs - 1; // Cập nhật giá trị trong input
        }
    }

    function tang(inputId, maxSoLuong) {
        let input = document.getElementById(inputId);
        let soLuongs = parseInt(input.value); // Chuyển đổi giá trị từ string sang số
        if (soLuongs < maxSoLuong) { // Kiểm tra nếu số lượng nhỏ hơn số lượng tồn
            input.value = soLuongs + 1; // Cập nhật giá trị trong input
        }
    }

    function tinhTienThua() {
        var tongTien = parseFloat(document.getElementById("tongTien").value);
        var tienKhachDua = parseFloat(document.getElementById("tienKhachDua").value);
        var thanhToan = document.getElementById("paymentBtn");

        if (!isNaN(tienKhachDua) && tienKhachDua >= tongTien && tongTien > 0) {
            var tienThua = tienKhachDua - tongTien;
            document.getElementById("tienThua").innerText = "Trả khách:" + " " + tienThua;
            thanhToan.disabled = false;
        } else {
            var tienThua = tienKhachDua - tongTien;
            document.getElementById("tienThua").innerText = "Khách thiếu:" + " " + (-tienThua);
            thanhToan.disabled = true;
        }
    }

    function openInvoiceModal() {
        var tenKH = document.getElementById("ten_KH").value;
        var tongTien = document.getElementById("tongTien").value;
        var tienKhachDua = document.getElementById("tienKhachDua").value;
        var tienThua = document.getElementById("tienThua").value;

        // Set values in the modal
        document.getElementById("modalTenKH").innerText = tenKH;
        document.getElementById("modalTongTien").innerText = tongTien;
        document.getElementById("modalTienKhachDua").innerText = tienKhachDua;
        document.getElementById("modalTienThua").innerText = tienThua;

        // Show modal
        var invoiceModal = new bootstrap.Modal(document.getElementById('invoiceModal'));
        invoiceModal.show();
    }

    function printInvoice() {
        var invoiceContent = document.querySelector('.modal-body').innerHTML;
        var printWindow = window.open('', '', 'height=400,width=600');
        printWindow.document.write('<html><head><title>In Hóa Đơn</title></head><body>');
        printWindow.document.write('<h3>HÓA ĐƠN THANH TOÁN</h3>');
        printWindow.document.write(invoiceContent);
        printWindow.document.write('</body></html>');
        printWindow.document.close();
        printWindow.print();
    }

</script>
</body>
</html>