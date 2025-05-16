<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Admin</title>
</head>
<body>
<div>
    <div>
        <h1>Create New Admin</h1>
        <a href="${pageContext.request.contextPath}/admins">
            Back
        </a>
    </div>

    <div id="errorMessage">
        <span></span>
    </div>

    <div id="successMessage">
        <span></span>
    </div>

    <form id="adminForm">
        <div>
            <label for="name">Full Name</label>
            <div>
                <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Enter admin's full name"
                        required>
            </div>
            <p id="nameError"></p>
        </div>

        <div>
            <label for="email">Email Address</label>
            <div>
                <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="name@example.com"
                        required>
            </div>
            <p id="emailError"></p>
        </div>

        <div>
            <label for="password">Password</label>
            <div>
                <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="••••••••"
                        required>
                <button
                        type="button"
                        id="togglePassword">
                </button>
            </div>
            <p id="passwordError"></p>
            <p>Must be at least 8 characters</p>
        </div>

        <div>
            <label for="nicNumber">NIC Number</label>
            <div>
                <input
                        type="text"
                        id="nicNumber"
                        name="nicNumber"
                        placeholder="Enter NIC number"
                        required>
            </div>
            <p id="nicNumberError"></p>
        </div>

        <div>
            <button type="submit" id="submitBtn">
                Create Admin
            </button>
        </div>
    </form>
</div>
</body>
</html>