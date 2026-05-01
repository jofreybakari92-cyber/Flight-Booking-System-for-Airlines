<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Turkish Airlines</title>
    <link rel="icon" href="https://www-turkishairlines.akamaized.net/theme/img/icons/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/form-elements.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .login-container { max-width: 450px; }
        .login-card {
            border-radius: 15px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
            border: none;
            overflow: hidden;
        }
        .login-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 40px 30px;
            text-align: center;
        }
        .login-header h2 { font-weight: 700; margin: 0; }
        .login-body { padding: 40px 30px; }
        .form-control {
            border: 2px solid #e9ecef;
            border-radius: 10px;
            padding: 15px 20px;
            font-size: 16px;
            transition: all 0.3s;
        }
        .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
        }
        .form-control::placeholder { color: #adb5bd; }
        .btn-primary {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            border-radius: 10px;
            padding: 15px 30px;
            font-size: 16px;
            font-weight: 600;
            transition: all 0.3s;
        }
        .btn-primary:hover {
            background: linear-gradient(135deg, #764ba2 0%, #667eea 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }
        .login-footer {
            text-align: center;
            padding: 20px 30px;
            background: #f8f9fa;
            border-top: 1px solid #e9ecef;
        }
        .login-footer a {
            color: #667eea;
            text-decoration: none;
            font-weight: 600;
        }
        .login-footer a:hover { color: #764ba2; }
        .alert {
            border-radius: 10px;
            border: none;
        }
        .input-group-text {
            background: #f8f9fa;
            border: 2px solid #e9ecef;
            border-right: none;
            border-radius: 10px 0 0 10px;
        }
        .form-control { border-radius: 0 10px 10px 0; }
        .input-group .form-control:focus + .input-group-text,
        .input-group .input-group-text + .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
        }
        hr.divider {
            height: 1px;
            background: linear-gradient(to right, transparent, #dee2e6, transparent);
            border: none;
            margin: 25px 0;
        }
    </style>
</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light" style="padding: 20px 0;">
        <div class="container">
            <a class="navbar-brand fw-bold fs-4" href="home.jsp" style="color: white;">
                <i class="fas fa-plane-departure me-2"></i>Turkish Airlines
            </a>
            <a href="home.jsp" class="btn btn-light btn-sm">
                <i class="fas fa-arrow-left me-2"></i>Back to Home
            </a>
        </div>
    </nav>

    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7 col-sm-9">
                <div class="login-card">
                    <div class="login-header">
                        <i class="fas fa-lock fa-3x mb-3 d-block"></i>
                        <h2>Welcome Back</h2>
                        <p class="mb-0 opacity-75">Sign in to access your account</p>
                    </div>
                    
                    <form role="form" action="j_security_check" method="post" class="login-body">
                        <!-- Demo Credentials Alert -->
                        <div class="alert alert-info mb-4" role="alert">
                            <h6 class="alert-heading fw-bold mb-2"><i class="fas fa-info-circle me-2"></i>Demo Credentials</h6>
                            <small class="mb-1 d-block"><strong>Admin:</strong> haris@admin.com / a</small>
                            <small class="mb-1 d-block"><strong>Manager:</strong> haris@manager.com / m</small>
                            <small class="d-block"><strong>Customer:</strong> shariq@customer.com / c</small>
                        </div>

                        <div class="mb-4">
                            <label for="j_username" class="form-label fw-bold">Email Address</label>
                            <input type="email" 
                                   name="j_username" 
                                   id="j_username" 
                                   required 
                                   class="form-control" 
                                   placeholder="Enter your email"
                                   autocomplete="username">
                        </div>

                        <div class="mb-4">
                            <label for="j_password" class="form-label fw-bold">Password</label>
                            <input type="password" 
                                   name="j_password" 
                                   id="j_password" 
                                   required 
                                   class="form-control" 
                                   placeholder="Enter your password"
                                   autocomplete="current-password">
                        </div>

                        <div class="d-grid mb-3">
                            <button type="submit" class="btn btn-primary btn-lg">
                                <i class="fas fa-sign-in-alt me-2"></i>Sign In
                            </button>
                        </div>

                        <div class="text-center">
                            <small class="text-muted">
                                <i class="fas fa-shield-alt me-1"></i>Secured by Turkish Airlines Authentication
                            </small>
                        </div>
                    </form>

                    <div class="login-footer">
                        <p class="mb-0 text-muted">
                            Don't have an account? 
                            <a href="#" data-bs-toggle="modal" data-bs-target="#contactModal">Contact Support</a>
                        </p>
                    </div>
                </div>

                <div class="text-center mt-4 text-white opacity-75">
                    <small>Need help? <a href="#" class="text-white text-decoration-underline">Contact our support team</a></small>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact Modal -->
    <div class="modal fade" id="contactModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Contact Support</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <p><strong>Email:</strong> support@turkishairlines.com</p>
                    <p><strong>Phone:</strong> +90 850 444 0 849</p>
                    <p><strong>Hours:</strong> 24/7 Customer Support</p>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>