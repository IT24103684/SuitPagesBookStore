<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Cart - BookStore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>

        .cart-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
            padding: 20px;
            margin-bottom: 20px;
        }

        .cart-item {
            padding: 15px;
            border-bottom: 1px solid #eee;
            display: flex;
            align-items: center;
            transition: all 0.3s ease;
        }

        .cart-item:hover {
            background-color: #f9f9f9;
        }

        .cart-item img {
            width: 80px;
            height: 120px;
            object-fit: cover;
            border-radius: 4px;
            margin-right: 20px;
        }

        .cart-item-details {
            flex-grow: 1;
        }

        .cart-item-title {
            font-weight: 600;
            color: #1a1a2e;
            margin-bottom: 5px;
        }

        .cart-item-author {
            font-size: 0.9rem;
            color: #666;
            margin-bottom: 5px;
        }

        .cart-item-price {
            font-weight: 600;
            color: #e94560;
        }

        .quantity-control {
            display: flex;
            align-items: center;
            margin: 0 20px;
        }

        .quantity-btn {
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .quantity-btn:hover {
            background-color: #e94560;
            color: white;
            border-color: #e94560;
        }

        .quantity-display {
            width: 40px;
            text-align: center;
            font-weight: 500;
        }

        .remove-btn {
            color: #e94560;
            background: none;
            border: none;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .remove-btn:hover {
            color: #c73e54;
        }

        .cart-summary {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
        }

        .cart-total {
            font-size: 1.2rem;
            font-weight: 600;
            color: #1a1a2e;
        }

        .checkout-btn {
            background-color: #e94560;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-weight: 500;
            transition: all 0.2s ease;
        }

        .checkout-btn:hover {
            background-color: #c73e54;
            color: white;
        }

        .continue-btn {
            color: #1a1a2e;
            border: 1px solid #ddd;
            padding: 10px 20px;
            border-radius: 4px;
            font-weight: 500;
            transition: all 0.2s ease;
        }

        .continue-btn:hover {
            background-color: #f8f9fa;
        }

        .empty-cart {
            text-align: center;
            padding: 40px 0;
        }

        .empty-cart-icon {
            font-size: 3rem;
            color: #ddd;
            margin-bottom: 20px;
        }

        .empty-cart-message {
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 20px;
        }
    </style>

</head>
<body>
<div class="cart-container">
    <h3>Your Shopping Cart</h3>

    <div id="cartContainer">
    </div>

    <div id="emptyCartMessage" class="empty-cart" style="display: none;">
        <div class="empty-cart-icon">
            <i class="fas fa-shopping-cart"></i>
        </div>
        <div class="empty-cart-message">Your cart is empty</div>
        <a href="/" class="continue-btn">Continue Shopping</a>
    </div>

    <div id="cartSummary" class="cart-summary" style="display: none;">
        <div class="d-flex justify-content-between align-items-center">
            <div class="cart-total">Total: $<span id="cartTotal">0.00</span></div>
            <div>
                <a href="/checkout" id="checkoutBtn" class="checkout-btn me-2">Proceed to Checkout</a>
                <button id="clearCartBtn" class="continue-btn">Clear Cart</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>