<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Feedback - BookStore</title>

</head>
<body class="bg-gray-50">


<div class="container mx-auto px-4 py-8">
    <div class="flex justify-between items-center mb-8">
        <h1 class="text-3xl font-bold text-gray-800">Book Feedback</h1>
        <button id="addFeedbackBtn" class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg">
            <i class="fas fa-plus mr-2"></i>Add Feedback
        </button>
    </div>

    <div id="createFeedbackSection" class="hidden mb-8 bg-white p-6 rounded-lg shadow-md">
        <div class="flex justify-between items-center mb-4">
            <h2 class="text-xl font-semibold">Add New Feedback</h2>
            <button id="closeCreateSection" class="text-gray-400 hover:text-gray-600">
                <i class="fas fa-times"></i>
            </button>
        </div>

        <form id="createFeedbackForm">
            <div class="mb-4">
                <label for="createBookSelect" class="block text-sm font-medium text-gray-700 mb-2">Book</label>
                <select id="createBookSelect" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                    <option value="">Select a book</option>
                </select>
            </div>

            <div class="mb-4">
                <label for="createStars" class="block text-sm font-medium text-gray-700 mb-2">Rating</label>
                <div class="flex space-x-1" id="createStarRating">
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="1"></i>
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="2"></i>
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="3"></i>
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="4"></i>
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="5"></i>
                </div>
                <input type="hidden" id="createStars" name="stars" required>
            </div>

            <div class="mb-4">
                <label for="createComment" class="block text-sm font-medium text-gray-700 mb-2">Comment</label>
                <textarea id="createComment" name="comment" rows="4"
                          class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
            </div>

            <div class="flex justify-end space-x-3">
                <button type="button" id="cancelCreateBtn" class="px-4 py-2 bg-gray-200 text-gray-800 rounded-md hover:bg-gray-300">Cancel</button>
                <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700">Submit</button>
            </div>
        </form>
    </div>

    <div id="bookSelectionSection" class="hidden mb-8">
        <h2 class="text-xl font-semibold mb-4">Select a Book to Review</h2>
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4" id="booksContainer">
        </div>
    </div>

    <div id="feedbacksContainer" class="space-y-6">
        <div class="text-center py-12">
            <div class="inline-block animate-spin rounded-full h-8 w-8 border-t-2 border-b-2 border-blue-500"></div>
            <p class="mt-2 text-gray-600">Loading feedbacks...</p>
        </div>
    </div>
</div>

<div id="editFeedbackModal" class="fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full hidden">
    <div class="relative top-20 mx-auto p-5 border w-full max-w-md shadow-lg rounded-md bg-white">
        <div class="flex justify-between items-center pb-3">
            <h3 class="text-xl font-medium text-gray-900" id="modalTitle">Edit Feedback</h3>
            <button type="button" class="text-gray-400 hover:text-gray-500" id="closeEditModal">
                <i class="fas fa-times"></i>
            </button>
        </div>
        <form id="editFeedbackForm">
            <input type="hidden" id="feedbackId">
            <div class="mb-4">
                <label for="bookSelect" class="block text-sm font-medium text-gray-700 mb-2">Book</label>
                <select id="bookSelect" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                    <option value="">Select a book</option>
                </select>
            </div>
            <input type="hidden" id="userId">

            <div class="mb-4">
                <label for="stars" class="block text-sm font-medium text-gray-700 mb-2">Rating</label>
                <div class="flex space-x-1" id="starRating">
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="1"></i>
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="2"></i>
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="3"></i>
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="4"></i>
                    <i class="fas fa-star text-2xl cursor-pointer" data-rating="5"></i>
                </div>
                <input type="hidden" id="stars" name="stars" required>
            </div>

            <div class="mb-4">
                <label for="comment" class="block text-sm font-medium text-gray-700 mb-2">Comment</label>
                <textarea id="comment" name="comment" rows="4"
                          class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
            </div>

            <div class="flex justify-end space-x-3">
                <button type="button" class="px-4 py-2 bg-gray-200 text-gray-800 rounded-md hover:bg-gray-300" id="cancelEditBtn">Cancel</button>
                <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700">Update</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>