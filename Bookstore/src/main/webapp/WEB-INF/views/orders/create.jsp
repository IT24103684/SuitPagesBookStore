<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout - Bookstore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>

<jsp:include page="/WEB-INF/views/common/navbar.jsp" />

<div class="container mt-5 mb-5">
    <h2 class="mb-4">Checkout</h2>

    <div class="row">
        <div class="col-md-8">
            <div class="form-container">
                <h4 class="mb-3">Shipping Information</h4>
                <form id="orderForm">
                    <div class="mb-3">
                        <label for="address" class="form-label">Shipping Address</label>
                        <textarea class="form-control" id="address" rows="3" required></textarea>
                        <div class="invalid-feedback">
                            Please enter your shipping address.
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary" id="placeOrderBtn">
                        Place Order
                    </button>
                </form>
            </div>
        </div>

        <div class="col-md-4">
            <div class="order-summary">
                <h4 class="mb-3">Order Summary</h4>
                <div id="cartItemsContainer">
                    <p class="text-center">Loading cart items...</p>
                </div>
                <hr>
                <div class="d-flex justify-content-between">
                    <h5>Total:</h5>
                    <h5 id="cartTotal">$0.00</h5>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="loading-overlay" id="loadingOverlay">
    <div class="spinner-border text-primary spinner" role="status">
        <span class="visually-hidden">Loading...</span>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
