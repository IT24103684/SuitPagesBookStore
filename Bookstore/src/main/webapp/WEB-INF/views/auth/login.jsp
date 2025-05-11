<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - SuitPages</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
</head>
<body>
<jsp:include page="../common/navbar.jsp"/>

<div>
    <div>
        <div>
            <h1>Welcome Back</h1>
            <p>Sign in to access your account</p>
        </div>

        <div id="error-message">
            <i class="fas fa-exclamation-circle"></i>
            <span id="error-text">Invalid email or password. Please try again.</span>
        </div>

        <form id="login-form">
            <div>
                <label for="email">Email Address</label>
                <div>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                    <i class="fas fa-envelope"></i>
                </div>
            </div>

            <div>
                <label for="password">Password</label>
                <div>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>
                    <i class="fas fa-lock"></i>
                </div>
            </div>

            <div>
                <input type="checkbox" id="remember" name="remember">
                <label for="remember">Remember me</label>
            </div>

            <button type="submit" id="login-btn">
                <i class="fas fa-sign-in-alt"></i> Sign In
            </button>
        </form>

        <div>
            <p>Don't have an account? <a href="register">Register here</a></p>
        </div>
    </div>
</div>

</body>
</html>