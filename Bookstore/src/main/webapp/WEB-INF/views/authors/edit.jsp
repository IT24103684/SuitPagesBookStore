<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Author</title>
</head>
<body>
<div>
    <div>
        <h1>Edit Author</h1>
        <a href="${pageContext.request.contextPath}/authors">
            Back
        </a>
    </div>

    <div id="errorMessage">
        <span></span>
    </div>

    <div id="successMessage">
        <span></span>
    </div>

    <form id="authorForm">
        <input type="hidden" id="authorId" name="authorId" value="${author.id}">

        <div>
            <label for="name">Full Name</label>
            <div>
                <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Enter author's name"
                        value="${author.name}"
                        required>
            </div>
            <p id="nameError"></p>
        </div>

        <div>
            <label for="gender">Gender</label>
            <div>
                <select
                        id="gender"
                        name="gender"
                        required>
                    <option value="">Select Gender</option>
                    <option value="Male" ${author.gender == 'Male' ? 'selected' : ''}>Male</option>
                    <option value="Female" ${author.gender == 'Female' ? 'selected' : ''}>Female</option>
                    <option value="Other" ${author.gender == 'Other' ? 'selected' : ''}>Other</option>
                </select>
            </div>
            <p id="genderError"></p>
        </div>

        <div>
            <label for="imageUrl">Image URL</label>
            <div>
                <input
                        type="text"
                        id="imageUrl"
                        name="imageUrl"
                        placeholder="https://example.com/image.jpg"
                        value="${author.imageUrl}">
            </div>
            <p id="imageUrlError"></p>
            <p>Optional: URL to author's profile image</p>
        </div>

        <div>
            <label for="age">Age</label>
            <div>
                <input
                        type="number"
                        id="age"
                        name="age"
                        min="1"
                        placeholder="Enter age"
                        value="${author.age}"
                        required>
            </div>
            <p id="ageError"></p>
        </div>

        <div>
            <button type="submit" id="submitBtn">
                Update Author
            </button>

            <button type="button" id="deleteBtn">
                Delete
            </button>
        </div>
    </form>
</div>
</body>
</html>