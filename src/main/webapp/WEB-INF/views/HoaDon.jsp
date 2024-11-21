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
                    <li class="nav-item ">
                        <a class="nav-link" href="/ban-hang">
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
                    <li class="nav-item  dashboard">
                        <a class="nav-link active" href="/hoa-don">
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

                <h1 class="h2 mb-4">Quản lý hóa đơn</h1>

                <div class="row mb-4">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Danh sách hóa đơn</h5>
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
                                                                data-bs-target="#themKhachHang" type="button"
                                                                onclick="getData(this, ${lstHd.id});"
                                                                class="btn btn-primary">+
                                                        </button>
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
                    <%--                        Hóa đơn--%>

                </div>

                <div class="col-md-4 overflow-y-auto">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Chi tiết hóa đơn ${idHoaDon}</h5>
                            <table class="table" id="invoiceDetailTable">
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
                                    <tr>
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

                                <c:if test="${check == 'true'}">
                                    <form action="/thanh-toan" method="post">
                                        <a href="/thanh-toan">
                                            <button type="submit" class="btn btn-success" id="paymentBtn">Thanh
                                                toán
                                            </button>
                                        </a>
                                    </form>
                                </c:if>
                            </div>
                            <form action="/tinh-tien" method="post">
                                <div class="input-group mb-3 mt-2">
                                    <input type="hidden" name="tongTien" value="${tongTien}">
                                    <span class="input-group-text">$</span>
                                    <input onchange="this.form.submit();" type="text" class="form-control"
                                           name="tienKhachDua" placeholder="Tiền khách đưa"
                                           aria-label="Amount (to the nearest dollar)">
                                    <span class="input-group-text">.00</span>
                                </div>
                                <h5><span id="">${tienThua}</span></h5>
                            </form>
                            <h4>${thongBao}</h4>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
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
</script>
</body>
</html>