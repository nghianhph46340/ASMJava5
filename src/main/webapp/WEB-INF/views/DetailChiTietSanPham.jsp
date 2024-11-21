<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management</title>
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
                    <li class="nav-item">
                        <a class="nav-link" href="/ban-hang">
                            <i class="bi bi-cart"></i> Đơn hàng
                        </a>
                    </li>
                    <li class="nav-item dashboard">
                        <a class="nav-link active" href="/san-pham">
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

            <!-- Product Management Content -->
            <div class="container mt-4">
                <h1 class="h2 mb-4">Quản lý sản phẩm</h1>

                <form id="" action="/san-pham/ctsp/update/${ctsp.id}" method="post">
                    <div class="mb-3">
                        <label for="productName" class="form-label">ID sản phẩm</label>
                        <input type="text" class="form-control" value="${ctsp.id}" name="id_sp" readonly id="ma_san_pham_input" required>
                    </div>
                    <div class="mb-3">
                        <label for="productPrice" class="form-label">Số lượng tồn</label>
                        <input type="text" class="form-control" value="${ctsp.so_luong_ton}" name="so_luong_ton" required>
                    </div>
                    <div class="mb-3">
                        <label for="productPrice" class="form-label">Giá bán</label>
                        <input type="text" class="form-control" value="${ctsp.gia_ban}" name="gia_ban" required>
                    </div>
                    <div class=" mb-3">
                        <label class="form-check-label" for="flexCheckDefault">
                            Trạng thái
                        </label>
                        <input class="form-check-input" type="checkbox" ${ctsp.trang_thai == 'Hoạt động'? 'checked':''} name="trang_thai" value="Hoạt động"
                               id="">
                    </div>
                    <div class="mb-3">
                        <label for="NgayTao" class="form-label">Ngày tạo</label>
                        <input type="date" class="form-control" value="${ctsp.ngay_tao}" name="ngay_tao" id="" required>
                    </div>
                    <div class="mb-3">
                        <label for="NgaySua" class="form-label">Ngày sửa</label>
                        <input type="date" class="form-control" value="${ctsp.ngay_sua}" name="ngay_sua" id="" required>
                    </div>

                    <div class="mb-3">
                        <label for="productCategory" class="form-label">Màu sắc</label>
                        <select class="form-select" id="" name="mauSac" required>
                            <option value="">Chọn danh mục</option>
                            <c:forEach items="${listMauSac}" var="mau">
                                <option value="${mau.id}" ${mau.id == ctsp.mauSac.id? 'selected':''}>${mau.ten_mau}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="productCategory" class="form-label">Kích thước</label>
                        <select class="form-select" id="" name="size" required>
                            <option value="">Chọn danh mục</option>
                            <c:forEach items="${listSize}" var="se">
                                <option value="${se.id}" ${se.id == ctsp.size.id? 'selected':''}>${se.ten_size}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="modal-footer">
<%--                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>--%>
                        <button type="submit" class="btn btn-primary">Lưu sản phẩm</button>
                    </div>
                </form>
            </div>
        </main>
    </div>
</div>

<%-- Thêm chi tiết sản phẩm--%>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>