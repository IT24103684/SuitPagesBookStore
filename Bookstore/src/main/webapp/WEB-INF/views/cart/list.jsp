<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Cart - BookStore</title>

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