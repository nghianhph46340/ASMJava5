<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .sidebar {
            height: 100vh;
            background-color: #f8f9fa;
        }
        .main-content {
            height: 100vh;
            overflow-y: auto;
        }
        .dashboard{
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
                    <li class="nav-item dashboard">
                        <a class="nav-link active " href="/trang-chu">
                            <i class="bi bi-house-door"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
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
                <input class="form-control w-50" type="text" placeholder="Tìm kiếm..." aria-label="Search">
                <div class="navbar-nav">
                    <div class="nav-item text-nowrap">
                        <a class="nav-link px-3" href="#"><i class="bi bi-bell"></i></a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#" class="d-flex align-items-center text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end text-small shadow" aria-labelledby="dropdownUser1">
                        <li><a class="dropdown-item" href="#">Hồ sơ</a></li>
                        <li><a class="dropdown-item" href="#">Cài đặt</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Đăng xuất</a></li>
                    </ul>
                </div>
            </header>

            <!-- Dashboard Content -->
            <div class="container mt-4">
                <h1 class="h2 mb-4">Tổng quan</h1>

                <div class="row mb-4">
                    <div class="col-md-3 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Tổng doanh thu</h5>
                                <p class="card-text fs-4">45.231.000 đ</p>
                                <p class="card-text"><small class="text-muted">+20.1% so với tháng trước</small></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Đơn hàng mới</h5>
                                <p class="card-text fs-4">+573</p>
                                <p class="card-text"><small class="text-muted">+201 so với tháng trước</small></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Sản phẩm đã bán</h5>
                                <p class="card-text fs-4">1,234</p>
                                <p class="card-text"><small class="text-muted">+19% so với tháng trước</small></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Khách hàng mới</h5>
                                <p class="card-text fs-4">+2,350</p>
                                <p class="card-text"><small class="text-muted">+180 so với tháng trước</small></p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Charts Section -->
                <div class="row mb-4">
                    <div class="col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Xu hướng doanh thu</h5>
                                <canvas id="revenueChart"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Phân bố danh mục sản phẩm</h5>
                                <canvas id="productCategoryChart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h2 class="h4">Đơn nhập hàng gần đây</h2>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createOrderModal">
                        <i class="bi bi-plus"></i> Tạo đơn nhập hàng
                    </button>
                </div>

                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Mã đơn</th>
                                    <th>Nhà cung cấp</th>
                                    <th>Ngày tạo</th>
                                    <th>Trạng thái</th>
                                    <th class="text-end">Tổng giá trị</th>
                                    <th class="text-end">Thao tác</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>#INV001</td>
                                    <td>Công ty ABC</td>
                                    <td>01/06/2023</td>
                                    <td>Đã nhận hàng</td>
                                    <td class="text-end">5,000,000 đ</td>
                                    <td class="text-end">
                                        <button class="btn btn-sm btn-outline-secondary">
                                            <i class="bi bi-three-dots"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>#INV002</td>
                                    <td>Công ty XYZ</td>
                                    <td>05/06/2023</td>
                                    <td>Đang vận chuyển</td>
                                    <td class="text-end">3,500,000 đ</td>
                                    <td class="text-end">
                                        <button class="btn btn-sm btn-outline-secondary">
                                            <i class="bi bi-three-dots"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>#INV003</td>
                                    <td>Công ty DEF</td>
                                    <td>10/06/2023</td>
                                    <td>Chờ xác nhận</td>
                                    <td class="text-end">7,200,000 đ</td>
                                    <td class="text-end">
                                        <button class="btn btn-sm btn-outline-secondary">
                                            <i class="bi bi-three-dots"></i>
                                        </button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<!-- Create Order Modal -->
<div class="modal fade" id="createOrderModal" tabindex="-1" aria-labelledby="createOrderModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createOrderModalLabel">Tạo đơn nhập hàng mới</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="createOrderForm">
                    <div class="mb-3">
                        <label for="supplier" class="form-label">Nhà cung cấp</label>
                        <input type="text" class="form-control" id="supplier" required>
                    </div>
                    <div class="mb-3">
                        <label for="product" class="form-label">Sản phẩm</label>
                        <input type="text" class="form-control" id="product" required>
                    </div>
                    <div class="mb-3">
                        <label for="quantity" class="form-label">Số lượng</label>
                        <input type="number" class="form-control" id="quantity" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary" onclick="saveOrder()">Lưu đơn</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function saveOrder() {
        // Get form values
        const supplier = document.getElementById('supplier').value;
        const product = document.getElementById('product').value;
        const quantity = document.getElementById('quantity').value;

        // Validate form
        if (!supplier || !product || !quantity) {
            alert('Vui lòng điền đầy đủ thông tin');
            return;
        }

        // Here you would typically send this data to your server
        console.log('Đơn hàng mới:', { supplier, product, quantity });

        // Close the modal
        const modal = bootstrap.Modal.getInstance(document.getElementById('createOrderModal'));
        modal.hide();

        // Reset form
        document.getElementById('createOrderForm').reset();

        // Show success message (in a real app, you'd want to update the UI with the new order)
        alert('Đơn hàng đã được tạo thành công!');
    }

    // Revenue Chart
    const revenueCtx = document.getElementById('revenueChart').getContext('2d');
    new Chart(revenueCtx, {
        type: 'line',
        data: {
            labels: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6'],
            datasets: [{
                label: 'Doanh thu (triệu đồng)',
                data: [30, 35, 40, 50, 45, 55],
                borderColor: 'rgb(75, 192, 192)',
                tension: 0.1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Product Category Chart
    const productCategoryCtx = document.getElementById('productCategoryChart').getContext('2d');
    new Chart(productCategoryCtx, {
        type: 'pie',
        data: {
            labels: ['Điện tử', 'Thời trang', 'Gia dụng', 'Thực phẩm'],
            datasets: [{
                data: [30, 25, 20, 25],
                backgroundColor: [
                    'rgb(255, 99, 132)',
                    'rgb(54, 162, 235)',
                    'rgb(255, 205, 86)',
                    'rgb(75, 192, 192)'
                ]
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
                title: {
                    display: true,
                    text: 'Phân bố danh mục sản phẩm'
                }
            }
        }
    });
</script>
</body>
</html>