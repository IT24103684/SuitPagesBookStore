<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile - SuitPages</title>

<body>
<jsp:include page="../common/navbar.jsp"/>

<div>
    <div>
        <div>
            <div>
                <div>
                    <div>
                        <div id="profile-initial"></div>
                        <img id="profile-image" alt="Profile picture">
                    </div>
                    <h2 id="user-name">Loading...</h2>
                    <p id="user-email">Loading...</p>
                </div>

                <div>
                    <nav>
                        <button id="profile-tab-btn">
                            <i class="fas fa-user-circle"></i>
                            <span>Account Settings</span>
                        </button>
                        <a href="/my-orders" id="orders-tab-btn">
                            <i class="fas fa-shopping-bag"></i>
                            <span>My Orders</span>
                        </a>
                        <button id="wishlist-tab-btn">
                            <i class="fas fa-heart"></i>
                            <span>Wishlist</span>
                        </button>
                        <button id="logout-btn">
                            <i class="fas fa-sign-out-alt"></i>
                            <span>Logout</span>
                        </button>
                    </nav>
                </div>
            </div>
        </div>


        <div>
            <div id="profile-tab">
                <div>
                    <h3>Account Settings</h3>
                    <p>Update your personal information</p>
                </div>

                <div>
                    <div id="profile-error">
                        <i class="fas fa-exclamation-circle"></i>
                        <span id="error-message"></span>
                    </div>

                    <div id="profile-success">
                        <i class="fas fa-check-circle"></i>
                        <span>Your profile has been updated successfully!</span>
                    </div>

                    <form id="profile-form">
                        <div>
                            <div>
                                <label for="fullName">Full Name</label>
                                <input type="text" id="fullName" name="fullName">
                            </div>
                            <div>
                                <label for="email">Email Address</label>
                                <input type="email" id="email" name="email">
                            </div>

                            <div>
                                <label for="address">Address</label>
                                <input type="text" id="address" name="address">
                            </div>
                        </div>

                        <div>
                            <h4>Change Password</h4>
                            <div>
                                <div>
                                    <label for="currentPassword">Current Password</label>
                                    <input type="password" id="currentPassword" name="currentPassword">
                                </div>
                                <div></div>
                                <div>
                                    <label for="newPassword">New Password</label>
                                    <input type="password" id="newPassword" name="newPassword">
                                </div>
                                <div>
                                    <label for="confirmPassword">Confirm New Password</label>
                                    <input type="password" id="confirmPassword" name="confirmPassword">
                                </div>
                            </div>
                        </div>

                        <div>
                            <button type="submit" id="update-profile-btn">
                                <i class="fas fa-save"></i> Save Changes
                            </button>
                            <button type="button" id="delete-account-btn">
                                <i class="fas fa-trash-alt"></i> Delete Account
                            </button>
                        </div>
                    </form>
                </div>
            </div>


            <div id="wishlist-tab">
                <jsp:include page="../cart/list.jsp"/>
            </div>
        </div>
    </div>
</div>

<div id="delete-modal">
    <div>
        <div>
            <h3>Delete Account</h3>
            <p>Are you sure you want to delete your account? This action cannot be undone and all your data will be permanently removed.</p>
            <div>
                <button id="cancel-delete-btn">
                    Cancel
                </button>
                <button id="confirm-delete-btn">
                    Delete Account
                </button>
            </div>
        </div>
    </div>
</div>
</body>
</html>