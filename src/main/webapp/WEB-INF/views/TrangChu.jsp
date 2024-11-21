<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyShop - Trang chủ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        .banner {
            background-image: url('https://source.unsplash.com/random/1600x900/?shopping');
            background-size: cover;
            background-position: center;
            color: white;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }
        .banner::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0,0,0,0.5);
        }
        .banner-content {
            position: relative;
            z-index: 1;
        }
        .featured-products {
            position: relative;
            overflow: hidden;
        }
        .product-slider {
            display: flex;
            transition: transform 0.5s ease;
        }
        .product-slide {
            flex: 0 0 100%;
            max-width: 100%;
        }
        .product-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        @media (min-width: 768px) {
            .product-slide {
                flex: 0 0 50%;
                max-width: 50%;
            }
        }
        @media (min-width: 992px) {
            .product-slide {
                flex: 0 0 25%;
                max-width: 25%;
            }
        }
    </style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Agoni</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Giới thiệu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Liên hệ</a>
                </li>
            </ul>
            <div class="d-flex">
                <button class="btn btn-outline-primary me-2"><i class="fas fa-search"></i></button>
                <button class="btn btn-outline-primary me-2"><i class="fas fa-user"></i></button>
                <button class="btn btn-outline-primary"><i class="fas fa-shopping-cart"></i></button>
            </div>
        </div>
    </div>
</nav>

<!-- Banner -->
<section class="banner position-relative py-5">
    <div class="container banner-content py-5">
        <h1 class="display-4 fw-bold mb-4">Chào mừng đến với Agoni</h1>
        <p class="lead mb-4">Khám phá bộ sưu tập sản phẩm đa dạng và chất lượng của chúng tôi</p>
        <a href="#" class="btn btn-primary btn-lg">Mua sắm ngay</a>
    </div>
</section>

<!-- Features -->
<section class="py-5 bg-light">
    <div class="container">
        <h2 class="text-center mb-5">Tại sao chọn chúng tôi</h2>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="text-center">
                    <i class="fas fa-truck fa-3x text-primary mb-3"></i>
                    <h4>Giao hàng nhanh chóng</h4>
                    <p>Nhận sản phẩm của bạn trong thời gian ngắn nhất</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="text-center">
                    <i class="fas fa-undo fa-3x text-primary mb-3"></i>
                    <h4>Đổi trả dễ dàng</h4>
                    <p>Chính sách đổi trả trong vòng 30 ngày</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="text-center">
                    <i class="fas fa-headset fa-3x text-primary mb-3"></i>
                    <h4>Hỗ trợ 24/7</h4>
                    <p>Đội ngũ hỗ trợ luôn sẵn sàng phục vụ bạn</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Featured Products -->
<section class="py-5 featured-products">
    <div class="container">
        <h2 class="text-center mb-5">Sản phẩm nổi bật</h2>
        <div class="product-slider">
            <div class="product-slide">
                <div class="card product-card">
                    <img src="https://source.unsplash.com/random/300x300/?tshirt" class="card-img-top" alt="Áo thun nam">
                    <div class="card-body">
                        <h5 class="card-title">Áo thun nam</h5>
                        <p class="card-text">199.000 ₫</p>
                        <a href="#" class="btn btn-primary">Mua ngay</a>
                        <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
                    </div>
                </div>
            </div>
            <div class="product-slide">
                <div class="card product-card">
                    <img src="https://source.unsplash.com/random/300x300/?jeans" class="card-img-top" alt="Quần jean nữ">
                    <div class="card-body">
                        <h5 class="card-title">Quần jean nữ</h5>
                        <p class="card-text">399.000 ₫</p>
                        <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
                    </div>
                </div>
            </div>
            <div class="product-slide">
                <div class="card product-card">
                    <img src="https://source.unsplash.com/random/300x300/?sneakers" class="card-img-top" alt="Giày thể thao">
                    <div class="card-body">
                        <h5 class="card-title">Giày thể thao</h5>
                        <p class="card-text">799.000 ₫</p>
                        <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
                    </div>
                </div>
            </div>
            <div class="product-slide">
                <div class="card product-card">
                    <img src="https://source.unsplash.com/random/300x300/?handbag" class="card-img-top" alt="Túi xách thời trang">
                    <div class="card-body">
                        <h5 class="card-title">Túi xách thời trang</h5>
                        <p class="card-text">599.000 ₫</p>
                        <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Product List -->
<section class="py-5 bg-light">
    <div class="container">
        <h2 class="text-center mb-5">Danh sách sản phẩm</h2>
        <div class="row">
            <div class="col-md-3 mb-4">
                <div class="card product-card">
                    <img src="https://source.unsplash.com/random/300x300/?watch" class="card-img-top" alt="Đồng hồ nam">
                    <div class="card-body">
                        <h5 class="card-title">Đồng hồ nam</h5>
                        <p class="card-text">1.299.000 ₫</p>
                        <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card product-card">
                    <img src="https://source.unsplash.com/random/300x300/?sunglasses" class="card-img-top" alt="Kính mát">
                    <div class="card-body">
                        <h5 class="card-title">Kính mát</h5>
                        <p class="card-text">299.000 ₫</p>
                        <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card product-card">
                    <img src="https://source.unsplash.com/random/300x300/?dress" class="card-img-top" alt="Váy dự tiệc">
                    <div class="card-body">
                        <h5 class="card-title">Váy dự tiệc</h5>
                        <p class="card-text">899.000 ₫</p>
                        <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card product-card">
                    <img src="https://source.unsplash.com/random/300x300/?wallet" class="card-img-top" alt="Ví da">
                    <div class="card-body">
                        <h5 class="card-title">Ví da</h5>
                        <p class="card-text">499.000 ₫</p>
                        <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Testimonials -->
<section class="py-5">
    <div class="container">
        <h2 class="text-center mb-5">Khách hàng nói gì về chúng tôi</h2>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <p class="card-text">"Sản phẩm tuyệt vời và dịch vụ khách hàng xuất sắc!"</p>
                        <footer class="blockquote-footer">Nguyễn Văn A</footer>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <p class="card-text">"Giao hàng nhanh chóng và sản phẩm chất lượng cao."</p>
                        <footer class="blockquote-footer">Trần Thị B</footer>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <p class="card-text">"Tôi luôn tìm thấy những gì mình cần ở đây."</p>
                        <footer class="blockquote-footer">Lê Văn C</footer>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Newsletter -->
<section class="py-5 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 text-center">
                <h2 class="mb-4">Đăng ký nhận tin</h2>
                <p class="mb-4">Cập nhật thông tin về sản phẩm mới và ưu đãi đặc biệt</p>
                <form class="row g-3 justify-content-center">
                    <div class="col-auto">
                        <input type="email" class="form-control" placeholder="Nhập email của bạn">
                    </div>
                    <div class="col-auto">
                        <button type="submit" class="btn btn-primary">Đăng ký</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-dark text-light py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-4">
                <h5>Về chúng tôi</h5>
                <p>MyShop là điểm đến lý tưởng cho mọi nhu cầu mua sắm của bạn. Chúng tôi cung cấp đa dạng sản phẩm chất lượng với giá cả cạnh tranh.</p>
            </div>
            <div class="col-md-4 mb-4">
                <h5>Liên kết nhanh</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-light">Trang chủ</a></li>
                    <li><a href="#" class="text-light">Sản phẩm</a></li>
                    <li><a href="#" class="text-light">Giới thiệu</a></li>
                    <li><a href="#" class="text-light">Liên hệ</a></li>
                </ul>
            </div>
            <div class="col-md-4 mb-4">
                <h5>Liên hệ</h5>
                <address>
                    123 Đường ABC, Quận XYZ<br>
                    Thành phố HCM, Việt Nam<br>
                    <i class="fas fa-phone"></i> (123) 456-7890<br>
                    <i class="fas fa-envelope"></i> info@myshop.com
                </address>
            </div>
        </div>
        <hr>
        <div class="text-center">
            <p>&copy; 2024 MyShop. Tất cả quyền được bảo lưu.</p>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Hiệu ứng tự động chuyển sản phẩm
    const productSlider = document.querySelector('.product-slider');
    const slides = document.querySelectorAll('.product-slide');
    let currentIndex = 0;

    function nextSlide() {
        currentIndex = (currentIndex + 1) % slides.length;
        updateSlider();
    }

    function updateSlider() {
        const offset = -currentIndex * 100;
        productSlider.style.transform = `translateX(${offset}%)`;
    }

    // Tự động chuyển slide mỗi 5 giây
    setInterval(nextSlide, 5000);

    // Hiệu ứng hover cho sản phẩm
    const productCards = document.querySelectorAll('.product-card');
    productCards.forEach(card => {
        card.addEventListener('mouseenter', () => {
            card.style.transform = 'translateY(-5px)';
            card.style.boxShadow = '0 4px 15px rgba(0,0,0,0.1)';
        });
        card.addEventListener('mouseleave', () => {
            card.style.transform = 'translateY(0)';
            card.style.boxShadow = 'none';
        });
    });
</script>
</body>
</html>