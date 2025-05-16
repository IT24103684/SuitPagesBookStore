<%@ page import="java.util.List" %>
<%@ page import="com.bookstore.dtos.OrderDTO" %>
<%@ page import="com.bookstore.services.OrderService" %>
<%@ page import="com.bookstore.repositories.OrderRepository" %>
<%@ page import="com.bookstore.repositories.CartRepository" %>
<%@ page import="com.bookstore.repositories.BookRepository" %>
<%@ page import="com.bookstore.repositories.UserRepository" %>
<%@ page import="com.bookstore.models.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Orders - BookStore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .order-container {
            margin-bottom: 2rem;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .order-header {
            border-bottom: 1px solid #eee;
            padding-bottom: 15px;
            margin-bottom: 15px;
        }
        .order-item {
            display: flex;
            margin-bottom: 15px;
            padding-bottom: 15px;
            border-bottom: 1px solid #f5f5f5;
        }
        .order-item:last-child {
            border-bottom: none;
        }
        .book-image {
            width: 80px;
            height: 120px;
            object-fit: cover;
            border-radius: 4px;
            margin-right: 20px;
        }
        .order-status {
            font-weight: 500;
            padding: 5px 10px;
            border-radius: 4px;
        }
        .status-pending {
            background-color: #fff3cd;
            color: #856404;
        }
        .status-completed {
            background-color: #d4edda;
            color: #155724;
        }
        .status-cancelled {
            background-color: #f8d7da;
            color: #721c24;
        }
        .empty-orders {
            text-align: center;
            padding: 50px 0;
        }
        .empty-orders i {
            font-size: 50px;
            color: #ddd;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="../common/navbar.jsp"/>

<div class="container mt-5">
    <h1 class="mb-4">My Orders</h1>

    <div id="ordersContainer">

        <div class="text-center">
            <div class="spinner-border text-primary" role="status">
                <span class="visually-hidden">Loading...</span>
            </div>
            <p>Loading your orders...</p>
        </div>
    </div>
</div>

</body>
</html>