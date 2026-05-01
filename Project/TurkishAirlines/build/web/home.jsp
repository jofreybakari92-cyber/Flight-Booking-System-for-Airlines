<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Turkish Airlines - Flight Booking System</title>
    <link rel="icon" href="https://www-turkishairlines.akamaized.net/theme/img/icons/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="./assets/css/style.css" rel="stylesheet">
    <link href="./assets/css/carousel.css" rel="stylesheet">
    <style>
        .hero-section { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; padding: 80px 0; }
        .feature-card { transition: transform 0.3s; border: none; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        .feature-card:hover { transform: translateY(-5px); box-shadow: 0 8px 15px rgba(0,0,0,0.2); }
        .stat-number { font-size: 2.5rem; font-weight: bold; color: #667eea; }
        .navbar-brand { font-weight: 700; font-size: 1.5rem; }
        .btn-primary { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border: none; }
        .btn-primary:hover { background: linear-gradient(135deg, #764ba2 0%, #667eea 100%); }
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background: linear-gradient(135deg, #2c3e50 0%, #34495e 100%);">
    <div class="container">
        <a class="navbar-brand" href="home.jsp">
            <i class="fas fa-plane-departure me-2"></i>Turkish Airlines
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home.jsp"><i class="fas fa-home me-1"></i> Home</a></li>
                <li class="nav-item"><a class="nav-link" href="BookFlight"><i class="fas fa-ticket-alt me-1"></i> Book Flight</a></li>
                <li class="nav-item"><a class="nav-link" href="SearchFlights"><i class="fas fa-search me-1"></i> Search Flights</a></li>
                <li class="nav-item"><a class="nav-link" href="Login"><i class="fas fa-sign-in-alt me-1"></i> Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="hero-section text-center">
    <div class="container">
        <h1 class="display-3 fw-bold mb-4"><i class="fas fa-globe-americas me-3"></i>Fly Turkish Airlines</h1>
        <p class="lead mb-4">Experience world-class service with Turkey's flagship carrier</p>
        <a href="BookFlight" class="btn btn-light btn-lg px-5 py-3 fw-bold me-3">Book Now</a>
        <a href="SearchFlights" class="btn btn-outline-light btn-lg px-5 py-3 fw-bold">Search Flights</a>
    </div>
</div>

<!-- Features Section -->
<div class="container py-5">
    <div class="row text-center mb-5">
        <div class="col-12">
            <h2 class="display-5 fw-bold mb-3">Why Choose Turkish Airlines?</h2>
            <p class="text-muted">Premium service to over 300 destinations worldwide</p>
        </div>
    </div>
    <div class="row g-4">
        <div class="col-md-4">
            <div class="card feature-card h-100">
                <div class="card-body text-center p-4">
                    <i class="fas fa-award fa-3x text-primary mb-3"></i>
                    <h4 class="card-title">Best European Airlines</h4>
                    <p class="card-text">Awarded the best European Airlines 2011-2016</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card feature-card h-100">
                <div class="card-body text-center p-4">
                    <i class="fas fa-route fa-3x text-primary mb-3"></i>
                    <h4 class="card-title">Global Network</h4>
                    <p class="card-text">300+ destinations in 120+ countries worldwide</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card feature-card h-100">
                <div class="card-body text-center p-4">
                    <i class="fas fa-concierge-bell fa-3x text-primary mb-3"></i>
                    <h4 class="card-title">Premium Service</h4>
                    <p class="card-text">World-class in-flight service and comfort</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Stats Section -->
<div class="bg-light py-5">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-3 mb-4">
                <div class="stat-number">300+</div>
                <p class="text-muted">Destinations</p>
            </div>
            <div class="col-md-3 mb-4">
                <div class="stat-number">120+</div>
                <p class="text-muted">Countries</p>
            </div>
            <div class="col-md-3 mb-4">
                <div class="stat-number">6 Class</div>
                <p class="text-muted">Service Types</p>
            </div>
            <div class="col-md-3 mb-4">
                <div class="stat-number">5-Star</div>
                <p class="text-muted">Rating</p>
            </div>
        </div>
    </div>
</div>

<!-- CTA Section -->
<div class="py-5" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
    <div class="container text-center text-white">
        <h2 class="display-5 fw-bold mb-4">Ready to Fly?</h2>
        <p class="lead mb-4">Book your next journey with Turkish Airlines today</p>
        <a href="BookFlight" class="btn btn-light btn-lg px-5 py-3 fw-bold">Book Your Flight</a>
    </div>
</div>

<!-- Footer -->
<jsp:include page="Templates/Footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>