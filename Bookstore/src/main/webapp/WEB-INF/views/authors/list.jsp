<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Authors List</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <style>
        .table-row-animate:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }

        .btn-icon {
            transition: transform 0.15s ease-in-out;
        }

        .btn-icon:hover {
            transform: scale(1.15);
        }

        .modal {
            transition: opacity 0.25s ease;
        }
    </style>
</head>
<body class="bg-gray-50 min-h-screen font-sans">
<nav class="bg-indigo-600 text-white shadow-lg">
    <div class="container mx-auto px-4">
        <div class="flex justify-between items-center py-4">
            <div class="flex items-center space-x-4">
                <a href="/" class="text-2xl font-bold">BookApp</a>
                <div class="hidden md:flex space-x-6">
                    <a href="/admin" class="hover:text-indigo-200 transition">Dashboard</a>
                    <a href="/books" class="hover:text-indigo-200 transition">Books</a>
                    <a href="/authors" class="hover:text-indigo-200 transition font-medium border-b-2 border-white pb-1">Authors</a>
                </div>
            </div>
            <div class="flex items-center space-x-4">
                <a href="/admin/profile" class="hover:text-indigo-200">
                    <i class="fas fa-user-circle text-xl"></i>
                </a>
                <a href="/logout" class="hover:text-indigo-200">
                    <i class="fas fa-sign-out-alt text-xl"></i>
                </a>
                <button class="md:hidden" id="mobileMenuButton">
                    <i class="fas fa-bars text-xl"></i>
                </button>
            </div>
        </div>
    </div>
    <div class="md:hidden hidden bg-indigo-700" id="mobileMenu">
        <div class="container mx-auto px-4 py-2">
            <div class="flex flex-col space-y-2 pb-3">
                <a href="/admin" class="py-2 hover:bg-indigo-600 px-2 rounded">Dashboard</a>
                <a href="/books" class="py-2 hover:bg-indigo-600 px-2 rounded">Books</a>
                <a href="/authors" class="py-2 bg-indigo-800 px-2 rounded">Authors</a>
            </div>
        </div>
    </div>
</nav>

<div class="bg-white shadow">
    <div class="container mx-auto px-4 py-3">
        <div class="flex items-center text-sm text-gray-600">
            <a href="/admin" class="hover:text-indigo-600">Dashboard</a>
            <span class="mx-2">/</span>
            <span class="text-gray-800 font-medium">Authors</span>
        </div>
    </div>
</div>

<div class="container mx-auto px-4 py-8">
    <div class="mb-6 flex flex-col md:flex-row justify-between items-start md:items-center">
        <div class="mb-4 md:mb-0">
            <h1 class="text-2xl font-bold text-gray-800">Authors</h1>
            <p class="text-gray-600">Manage author information for your books</p>
        </div>
        <div class="flex flex-col sm:flex-row space-y-2 sm:space-y-0 sm:space-x-2">
            <div class="relative">
                <input type="text" id="searchInput" placeholder="Search authors..." class="pl-10 pr-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500">
                <div class="absolute left-3 top-1/2 transform -translate-y-1/2">
                    <i class="fas fa-search text-gray-400"></i>
                </div>
            </div>
            <a href="/authors/create" class="bg-indigo-600 hover:bg-indigo-700 text-white py-2 px-4 rounded-md flex items-center justify-center transition">
                <i class="fas fa-plus mr-2"></i> Add Author
            </a>
        </div>
    </div>

    <div id="notificationArea" class="mb-6 hidden">
        <div id="successNotification" class="hidden bg-green-100 border-l-4 border-green-500 text-green-700 p-4 mb-4 rounded flex items-start">
            <div class="flex-shrink-0">
                <i class="fas fa-check-circle mt-0.5"></i>
            </div>
            <div class="ml-3 flex-grow">
                <p class="text-sm font-medium" id="successMessage"></p>
            </div>
            <button class="ml-auto">
                <i class="fas fa-times text-green-700"></i>
            </button>
        </div>

        <div id="errorNotification" class="hidden bg-red-100 border-l-4 border-red-500 text-red-700 p-4 rounded flex items-start">
            <div class="flex-shrink-0">
                <i class="fas fa-exclamation-circle mt-0.5"></i>
            </div>
            <div class="ml-3 flex-grow">
                <p class="text-sm font-medium" id="errorMessage"></p>
            </div>
            <button class="ml-auto">
                <i class="fas fa-times text-red-700"></i>
            </button>
        </div>
    </div>

    <div class="bg-white shadow-md rounded-lg overflow-hidden">
        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                <tr>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                        Author
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                        Gender
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                        Age
                    </th>
                    <th scope="col" class="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
                        Actions
                    </th>
                </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200" id="authorsTableBody">
                </tbody>
            </table>
        </div>
    </div>

    <div id="pagination-container"></div>
</div>

<div id="deleteModal" class="fixed z-10 inset-0 overflow-y-auto hidden">
    <div class="flex items-center justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 transition-opacity" aria-hidden="true">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>

        <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>

        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="sm:flex sm:items-start">
                    <div class="mx-auto flex-shrink-0 flex items-center justify-center h-12 w-12 rounded-full bg-red-100 sm:mx-0 sm:h-10 sm:w-10">
                        <i class="fas fa-exclamation-triangle text-red-600"></i>
                    </div>
                    <div class="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
                        <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">
                            Delete Author
                        </h3>
                        <div class="mt-2">
                            <p class="text-sm text-gray-500" id="modal-description">
                                Are you sure you want to delete this author? This action cannot be undone.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <button type="button" id="confirmDeleteBtn" class="w-full inline-flex justify-center rounded-md border border-transparent shadow-sm px-4 py-2 bg-red-600 text-base font-medium text-white hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 sm:ml-3 sm:w-auto sm:text-sm">
                    Delete
                </button>
                <button type="button" class="mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm">
                    Cancel
                </button>
            </div>
        </div>
    </div>
</div>

<footer class="bg-white border-t mt-10 py-6">
    <div class="container mx-auto px-4">
        <div class="text-center text-gray-500 text-sm">
            &copy; 2025 BookApp Admin Panel. All rights reserved.
        </div>
    </div>
</footer>
</body>
</html>