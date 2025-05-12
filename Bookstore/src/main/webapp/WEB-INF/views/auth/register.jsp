<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Account</title>
    <script src="https://cdn.tailwindcss.com"></script>

    <script src="https://unpkg.com/lucide@latest"></script>
    <script src="https://unpkg.com/@lucide/web@latest"></script>
    <style>

        .focus-ring:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.5);
        }
    </style>
</head>
<body class="bg-gray-50 min-h-screen flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
<div class="max-w-md w-full bg-white rounded-xl shadow-lg p-8">
    <div class="flex justify-between items-center mb-8">
        <h1 class="text-2xl font-bold text-gray-800">Create Account</h1>
        <a href="${pageContext.request.contextPath}/login" class="bg-gray-100 text-gray-700 hover:bg-gray-200 py-2 px-4 rounded-lg border text-sm flex items-center transition-colors">
            <i data-lucide="log-in" class="h-4 w-4 mr-1"></i>
            Login
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

    <form id="registerForm" class="space-y-6">
        <div class="relative">
            <label for="name" class="block text-sm font-medium text-gray-700 mb-1">Full Name</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="user" class="h-5 w-5 text-gray-400"></i>
                </div>
                <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Enter your full name"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="nameError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email Address</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="mail" class="h-5 w-5 text-gray-400"></i>
                </div>
                <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="Enter your email address"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="emailError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="address" class="block text-sm font-medium text-gray-700 mb-1">Address</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="map-pin" class="h-5 w-5 text-gray-400"></i>
                </div>
                <textarea
                        id="address"
                        name="address"
                        placeholder="Enter your address"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        rows="2"
                        required></textarea>
            </div>
            <p id="addressError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label for="password" class="block text-sm font-medium text-gray-700 mb-1">Password</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="lock" class="h-5 w-5 text-gray-400"></i>
                </div>
                <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Create a password"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-10 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
                <button type="button" id="togglePassword" class="absolute inset-y-0 right-0 pr-3 flex items-center">
                    <i data-lucide="eye" id="showPasswordIcon" class="h-5 w-5 text-gray-400"></i>
                    <i data-lucide="eye-off" id="hidePasswordIcon" class="h-5 w-5 text-gray-400 hidden"></i>
                </button>
            </div>
            <p id="passwordError" class="text-red-500 text-xs mt-1 hidden"></p>
            <p class="text-gray-500 text-xs mt-1">Password must be at least 6 characters</p>
        </div>

        <div class="relative">
            <label for="confirmPassword" class="block text-sm font-medium text-gray-700 mb-1">Confirm Password</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="lock" class="h-5 w-5 text-gray-400"></i>
                </div>
                <input
                        type="password"
                        id="confirmPassword"
                        name="confirmPassword"
                        placeholder="Confirm your password"
                        class="focus-ring w-full rounded-lg border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm placeholder:text-gray-400 focus:border-blue-500"
                        required>
            </div>
            <p id="confirmPasswordError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div class="relative">
            <label class="block text-sm font-medium text-gray-700 mb-2">Gender</label>
            <div class="flex space-x-5">
                <div class="flex items-center">
                    <input
                            type="radio"
                            id="male"
                            name="gender"
                            value="male"
                            class="focus-ring h-4 w-4 text-blue-600 border-gray-300"
                            required>
                    <label for="male" class="ml-2 block text-sm text-gray-700">Male</label>
                </div>
                <div class="flex items-center">
                    <input
                            type="radio"
                            id="female"
                            name="gender"
                            value="female"
                            class="focus-ring h-4 w-4 text-blue-600 border-gray-300">
                    <label for="female" class="ml-2 block text-sm text-gray-700">Female</label>
                </div>
                <div class="flex items-center">
                    <input
                            type="radio"
                            id="other"
                            name="gender"
                            value="other"
                            class="focus-ring h-4 w-4 text-blue-600 border-gray-300">
                    <label for="other" class="ml-2 block text-sm text-gray-700">Other</label>
                </div>
            </div>
            <p id="genderError" class="text-red-500 text-xs mt-1 hidden"></p>
        </div>

        <div>
            <button type="submit" id="submitBtn"
                    class="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 flex items-center justify-center transition-colors">
                <i data-lucide="user-plus" class="h-5 w-5 mr-2"></i>
                Create Account
            </button>
        </div>
    </form>

    <div class="mt-6 text-center">
        <p class="text-sm text-gray-600">
            Already have an account?
            <a href="${pageContext.request.contextPath}/login" class="font-medium text-blue-600 hover:text-blue-500">
                Login
            </a>
        </p>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        lucide.createIcons();

        const registerForm = document.getElementById('registerForm');
        const errorMessage = document.getElementById('errorMessage');
        const successMessage = document.getElementById('successMessage');
        const submitBtn = document.getElementById('submitBtn');

        const togglePassword = document.getElementById('togglePassword');
        const passwordInput = document.getElementById('password');
        const showPasswordIcon = document.getElementById('showPasswordIcon');
        const hidePasswordIcon = document.getElementById('hidePasswordIcon');

        togglePassword.addEventListener('click', function() {
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                showPasswordIcon.classList.add('hidden');
                hidePasswordIcon.classList.remove('hidden');
            } else {
                passwordInput.type = 'password';
                showPasswordIcon.classList.remove('hidden');
                hidePasswordIcon.classList.add('hidden');
            }
        });

        const patterns = {
            name: /^.{2,100}$/,
            email: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
            password: /^.{6,}$/
        };

        function validateField(field, pattern) {
            const errorElement = document.getElementById(field.id + "Error");

            if (field.required && !field.value.trim()) {
                errorElement.textContent = field.name.charAt(0).toUpperCase() + field.name.slice(1) + " is required";
                errorElement.classList.remove("hidden");
                return false;
            }

            if (pattern && field.value.trim() && !pattern.test(field.value.trim())) {
                if (field.id === 'name') {
                    errorElement.textContent = 'Name should be between 2-100 characters';
                } else if (field.id === 'email') {
                    errorElement.textContent = 'Please enter a valid email address';
                } else if (field.id === 'password') {
                    errorElement.textContent = 'Password must be at least 6 characters';
                }
                errorElement.classList.remove('hidden');
                return false;
            }

            errorElement.classList.add('hidden');
            return true;
        }

        function validateGender() {
            const genderInputs = document.querySelectorAll('input[name="gender"]');
            const errorElement = document.getElementById('genderError');
            let isChecked = false;

            for (const input of genderInputs) {
                if (input.checked) {
                    isChecked = true;
                    break;
                }
            }

            if (!isChecked) {
                errorElement.textContent = "Please select a gender";
                errorElement.classList.remove("hidden");
                return false;
            }

            errorElement.classList.add("hidden");
            return true;
        }

        function validatePasswordMatch() {
            const password = document.getElementById('password');
            const confirmPassword = document.getElementById('confirmPassword');
            const errorElement = document.getElementById('confirmPasswordError');

            if (password.value !== confirmPassword.value) {
                errorElement.textContent = "Passwords do not match";
                errorElement.classList.remove("hidden");
                return false;
            }

            errorElement.classList.add("hidden");
            return true;
        }

        function showError(message) {
            errorMessage.querySelector('span').textContent = message;
            errorMessage.classList.remove('hidden');
            successMessage.classList.add('hidden');
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }

        function showSuccess(message) {
            successMessage.querySelector('span').textContent = message;
            successMessage.classList.remove('hidden');
            errorMessage.classList.add('hidden');
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }

        registerForm.addEventListener('submit', function(e) {
            e.preventDefault();

            errorMessage.classList.add('hidden');
            successMessage.classList.add('hidden');

            const name = document.getElementById('name');
            const email = document.getElementById('email');
            const address = document.getElementById('address');
            const password = document.getElementById('password');
            const confirmPassword = document.getElementById('confirmPassword');

            const genderInputs = document.querySelectorAll('input[name="gender"]');
            let gender = '';
            for (const input of genderInputs) {
                if (input.checked) {
                    gender = input.value;
                    break;
                }
            }

            const isNameValid = validateField(name, patterns.name);
            const isEmailValid = validateField(email, patterns.email);
            const isAddressValid = validateField(address);
            const isPasswordValid = validateField(password, patterns.password);
            const isPasswordMatch = validatePasswordMatch();
            const isGenderValid = validateGender();

            if (isNameValid && isEmailValid && isAddressValid && isPasswordValid && isPasswordMatch && isGenderValid) {

                submitBtn.disabled = true;
                submitBtn.innerHTML = '<svg class="animate-spin -ml-1 mr-2 h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"><circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle><path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path></svg>Creating Account...';

                const userData = {
                    name: name.value.trim(),
                    email: email.value.trim(),
                    address: address.value.trim(),
                    password: password.value,
                    gender: gender
                };

                fetch('/api/users', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(userData)
                })
                    .then(response => {
                        if (!response.ok) {
                            return response.text().then(text => {
                                throw new Error(text || 'Failed to create account');
                            });
                        }
                        return response.json();
                    })
                    .then(data => {

                        registerForm.reset();


                        showSuccess('Account created successfully! Redirecting to login page...');


                        submitBtn.disabled = false;
                        submitBtn.innerHTML = '<i data-lucide="user-plus" class="h-5 w-5 mr-2"></i>Create Account';
                        lucide.createIcons();

                        setTimeout(() => {
                            window.location.href = '/login';
                        }, 2000);
                    })
                    .catch(error => {
                        showError(error.message || 'An error occurred while creating your account');

                        submitBtn.disabled = false;
                        submitBtn.innerHTML = '<i data-lucide="user-plus" class="h-5 w-5 mr-2"></i>Create Account';
                        lucide.createIcons();
                    });
            }
        });
    });
</script>
</body>
</html>