<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Feedbacks</title>

</head>
<body class="bg-gray-50">
<nav class="bg-indigo-600 text-white shadow-lg">
    <div class="container mx-auto px-4 py-3">
        <div class="flex justify-between items-center">
            <div class="flex space-x-4">
                <a href="/admin" class="text-white hover:bg-indigo-700 px-3 py-2 rounded-md text-sm font-medium">Dashboard</a>
                <a href="/books" class="text-white hover:bg-indigo-700 px-3 py-2 rounded-md text-sm font-medium">Books</a>
                <a href="/feedbacks" class="bg-indigo-800 text-white px-3 py-2 rounded-md text-sm font-medium">Feedbacks</a>
            </div>
        </div>
    </div>
</nav>

<div class="container mx-auto px-4 py-8">
    <div class="mb-6">
        <h1 class="text-2xl font-bold text-gray-800">Customer Feedbacks</h1>
        <p class="text-gray-600">View all customer feedbacks</p>
    </div>

    <div class="bg-white shadow-md rounded-lg overflow-hidden">
        <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gray-50">
            <tr>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Book</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">User</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Rating</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Comment</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Date</th>
            </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200" id="feedbacksTableBody">
            <tr>
                <td colspan="5" class="px-6 py-10 text-center text-sm text-gray-500">
                    <div class="flex flex-col items-center justify-center">
                        <i class="fas fa-spinner fa-spin text-4xl text-gray-300 mb-3"></i>
                        <p>Loading feedbacks...</p>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>