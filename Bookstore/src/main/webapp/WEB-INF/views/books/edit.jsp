<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Book</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Add Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>
    <script src="https://unpkg.com/@lucide/web@latest"></script>
    <style>
        /* Custom focus styles for better accessibility */
        .focus-ring:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.5);
        }
    </style>
</head>
<body class="bg-gray-50 min-h-screen flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
<div class="max-w-md w-full bg-white rounded-xl shadow-lg p-8">
    <div class="flex justify-between items-center mb-8">
        <h1 class="text-2xl font-bold text-gray-800">Edit Book</h1>
        <a href="${pageContext.request.contextPath}/books" class="bg-gray-100 text-gray-700 hover:bg-gray-200 py-2 px-4 rounded-lg border text-sm flex items-center transition-colors">
            <i data-lucide="arrow-left" class="h-4 w-4 mr-1"></i>
            Back
        </a>
    </div>

    <div id="errorMessage" class="hidden bg-red-100 border-l-4 border-red-500 text-red-700 p-4 rounded-lg mb-6 text-sm flex items-start">
        <i data-lucide="alert-circle" class="h-5 w-5 mr-2 flex-shrink-0"></i>
        <span></span>
    </div>

    <div id="successMessage" class="hidden bg-green-100 border-l-4 border-green-500 text-green-700 p-4 rounded-lg mb-6 text-sm flex items-start">
        <i data-lucide="check-circle" class="h-5 w-5 mr-2 flex-shrink-0"></i>
        <span></span>
    </div>

    <form id="bookForm" class="space-y-6">
        <!-- Hidden input for book ID -->
        <input type="hidden" id="id" name="id" value="${book.id}">

        <div class="relative">
            <label for="name" class="block text-sm font-medium text-gray-700 mb-1">Book Title</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="book" class="h-5 w-5 text-gray-400"></i>
                </div>
                <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Enter book title"
                        value="${book.name}"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="nameError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="isbn" class="block text-sm font-medium text-gray-700 mb-1">ISBN</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="barcode" class="h-5 w-5 text-gray-400"></i>
                </div>
                <input
                        type="text"
                        id="isbn"
                        name="isbn"
                        placeholder="Enter ISBN"
                        value="${book.isbn}"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="isbnError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="category" class="block text-sm font-medium text-gray-700 mb-1">Category</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="tag" class="h-5 w-5 text-gray-400"></i>
                </div>
                <select
                        id="category"
                        name="category"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm text-gray-700 appearance-none focus:border-blue-500"
                        required>
                    <option value="">Select Category</option>
                    <option value="Fiction" ${book.category == 'Fiction' ? 'selected' : ''}>Fiction</option>
                    <option value="Non-Fiction" ${book.category == 'Non-Fiction' ? 'selected' : ''}>Non-Fiction</option>
                    <option value="Science" ${book.category == 'Science' ? 'selected' : ''}>Science</option>
                    <option value="Technology" ${book.category == 'Technology' ? 'selected' : ''}>Technology</option>
                    <option value="History" ${book.category == 'History' ? 'selected' : ''}>History</option>
                    <option value="Biography" ${book.category == 'Biography' ? 'selected' : ''}>Biography</option>
                    <option value="Self-Help" ${book.category == 'Self-Help' ? 'selected' : ''}>Self-Help</option>
                    <option value="Children" ${book.category == 'Children' ? 'selected' : ''}>Children</option>
                    <option value="Other" ${book.category == 'Other' ? 'selected' : ''}>Other</option>
                </select>
                <div class="absolute inset-y-0 right-0 flex items-center pr-2 pointer-events-none">
                    <i data-lucide="chevron-down" class="h-4 w-4 text-gray-400"></i>
                </div>
            </div>
            <p id="categoryError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="price" class="block text-sm font-medium text-gray-700 mb-1">Price</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="dollar-sign" class="h-5 w-5 text-gray-400"></i>
                </div>
                <input
                        type="number"
                        id="price"
                        name="price"
                        min="0"
                        step="0.01"
                        placeholder="Enter price"
                        value="${book.price}"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="priceError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="inStock" class="block text-sm font-medium text-gray-700 mb-1">Stock Quantity</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="package" class="h-5 w-5 text-gray-400"></i>
                </div>
                <input
                        type="number"
                        id="inStock"
                        name="inStock"
                        min="0"
                        placeholder="Enter stock quantity"
                        value="${book.inStock}"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="inStockError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="authorId" class="block text-sm font-medium text-gray-700 mb-1">Author</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="user" class="h-5 w-5 text-gray-400"></i>
                </div>
                <select
                        id="authorId"
                        name="authorId"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm text-gray-700 appearance-none focus:border-blue-500"
                        required>
                    <option value="">Select Author</option>
                </select>
                <div class="absolute inset-y-0 right-0 flex items-center pr-2 pointer-events-none">
                    <i data-lucide="chevron-down" class="h-4 w-4 text-gray-400"></i>
                </div>
            </div>
            <p id="authorIdError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="imageUrl" class="block text-sm font-medium text-gray-700 mb-1">Image URL</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="image" class="h-5 w-5 text-gray-400"></i>
                </div>
                <input
                        type="text"
                        id="imageUrl"
                        name="imageUrl"
                        placeholder="https://example.com/image.jpg"
                        value="${book.imageUrl}"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500">
            </div>
            <p id="imageUrlError" class="text-red-500 text-xs mt-1 hidden"></p>
            <p class="text-gray-500 text-xs mt-1">Optional: URL to book cover image</p>
        </div>

        <div class="flex space-x-4">
            <button type="submit" id="submitBtn"
                    class="flex-1 bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 flex items-center justify-center transition-colors">
                <i data-lucide="save" class="h-5 w-5 mr-2"></i>
                Update Book
            </button>

            <button type="button" id="deleteBtn"
                    class="flex-1 bg-red-500 hover:bg-red-600 text-white font-medium py-2 px-4 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2 flex items-center justify-center transition-colors">
                <i data-lucide="trash-2" class="h-5 w-5 mr-2"></i>
                Delete
            </button>
        </div>
    </form>
</div>

<script>