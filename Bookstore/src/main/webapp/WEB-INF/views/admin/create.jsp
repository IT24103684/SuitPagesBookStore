<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Admin</title>
    <style>
        .focus-ring:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(58, 130, 246, 0.5);
        }
    </style>
</head>
<body class="bg-gray-50 min-h-screen flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
<div class="max-w-md w-full bg-white rounded-xl shadow-lg p-8">
    <div class="flex justify-between items-center mb-8">
        <h1 class="text-2xl font-bold text-gray-800">Create New Admin</h1>
        <a href="${pageContext.request.contextPath}/admins"
           class="bg-gray-100 text-gray-700 hover:bg-gray-200 py-2 px-4 rounded-lg border text-sm flex items-center transition-colors">
            Back
        </a>
    </div>

    <div id="errorMessage"
         class="hidden bg-red-100 border-l-4 border-red-500 text-red-700 p-4 rounded-lg mb-6 text-sm flex items-start">
        <span></span>
    </div>

    <div id="successMessage"
         class="hidden bg-green-100 border-l-4 border-green-500 text-green-700 p-4 rounded-lg mb-6 text-sm flex items-start">
        <span></span>
    </div>

    <form id="adminForm" class="space-y-6">
        <div class="relative">
            <label for="name" class="block text-sm font-medium text-gray-700 mb-1">Full Name</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                </div>
                <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Enter admin's full name"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="nameError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email Address</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                </div>
                <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="name@example.com"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="emailError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="password" class="block text-sm font-medium text-gray-700 mb-1">Password</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                </div>
                <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="••••••••"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-10 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
                <button
                        type="button"
                        id="togglePassword"
                        class="absolute inset-y-0 right-0 pr-3 flex items-center text-gray-400 hover:text-gray-600">
                </button>
            </div>
            <p id="passwordError" class="text-red-500 text-xs mt-1 hidden"></p>
            <p class="text-gray-500 text-xs mt-1">Must be at least 8 characters</p>
        </div>

        <div class="relative">
            <label for="nicNumber" class="block text-sm font-medium text-gray-700 mb-1">NIC Number</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                </div>
                <input
                        type="text"
                        id="nicNumber"
                        name="nicNumber"
                        placeholder="Enter NIC number"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="nicNumberError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div>
            <button type="submit" id="submitBtn"
                    class="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 flex items-center justify-center transition-colors">
                Create Admin
            </button>
        </div>
    </form>
</div>
</body>
</html>