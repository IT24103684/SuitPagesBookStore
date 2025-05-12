<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Account</title>
    <script src="https://unpkg.com/lucide@latest"></script>
    <script src="https://unpkg.com/@lucide/web@latest"></script>
</head>
<body>
<div>
    <div>
        <h1>Create Account</h1>
        <a href="${pageContext.request.contextPath}/login">
            <i data-lucide="log-in"></i>
            Login
        </a>
    </div>

    <div id="errorMessage">
        <i data-lucide="alert-circle"></i>
        <span></span>
    </div>

    <div id="successMessage">
        <i data-lucide="check-circle"></i>
        <span></span>
    </div>

    <form id="registerForm">
        <div>
            <label for="name">Full Name</label>
            <div>
                <div>
                    <i data-lucide="user"></i>
                </div>
                <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Enter your full name"
                        required>
            </div>
            <p id="nameError"></p>
        </div>

        <div>
            <label for="email">Email Address</label>
            <div>
                <div>
                    <i data-lucide="mail"></i>
                </div>
                <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="Enter your email address"
                        required>
            </div>
            <p id="emailError"></p>
        </div>

        <div>
            <label for="address">Address</label>
            <div>
                <div>
                    <i data-lucide="map-pin"></i>
                </div>
                <textarea
                        id="address"
                        name="address"
                        placeholder="Enter your address"
                        rows="2"
                        required></textarea>
            </div>
            <p id="addressError"></p>
        </div>

        <div>
            <label for="password">Password</label>
            <div>
                <div>
                    <i data-lucide="lock"></i>
                </div>
                <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Create a password"
                        required>
                <button type="button" id="togglePassword">
                    <i data-lucide="eye" id="showPasswordIcon"></i>
                    <i data-lucide="eye-off" id="hidePasswordIcon"></i>
                </button>
            </div>
            <p id="passwordError"></p>
            <p>Password must be at least 6 characters</p>
        </div>

        <div>
            <label for="confirmPassword">Confirm Password</label>
            <div>
                <div>
                    <i data-lucide="lock"></i>
                </div>
                <input
                        type="password"
                        id="confirmPassword"
                        name="confirmPassword"
                        placeholder="Confirm your password"
                        required>
            </div>
            <p id="confirmPasswordError"></p>
        </div>

        <div>
            <label>Gender</label>
            <div>
                <div>
                    <input
                            type="radio"
                            id="male"
                            name="gender"
                            value="male"
                            required>
                    <label for="male">Male</label>
                </div>
                <div>
                    <input
                            type="radio"
                            id="female"
                            name="gender"
                            value="female">
                    <label for="female">Female</label>
                </div>
                <div>
                    <input
                            type="radio"
                            id="other"
                            name="gender"
                            value="other">
                    <label for="other">Other</label>
                </div>
            </div>
            <p id="genderError"></p>
        </div>

        <div>
            <button type="submit" id="submitBtn">
                <i data-lucide="user-plus"></i>
                Create Account
            </button>
        </div>
    </form>

    <div>
        <p>
            Already have an account?
            <a href="${pageContext.request.contextPath}/login">
                Login
            </a>
        </p>
    </div>
</div>
</body>
</html>