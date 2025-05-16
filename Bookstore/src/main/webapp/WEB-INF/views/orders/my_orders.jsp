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
    <title>My Orders BookStore</title>

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