<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Authors List</title>
</head>
<body>
<nav>
    <div>
        <div>
            <div>
                <a href="/">BookApp</a>
                <div>
                    <a href="/admin">Dashboard</a>
                    <a href="/books">Books</a>
                    <a href="/authors">Authors</a>
                </div>
            </div>
            <div>
                <a href="/admin/profile">
                    <span>Profile</span>
                </a>
                <a href="/logout">
                    <span>Logout</span>
                </a>
                <button id="mobileMenuButton">
                    <span>Menu</span>
                </button>
            </div>
        </div>
    </div>
    <div id="mobileMenu">
        <div>
            <div>
                <a href="/admin">Dashboard</a>
                <a href="/books">Books</a>
                <a href="/authors">Authors</a>
            </div>
        </div>
    </div>
</nav>

<div>
    <div>
        <div>
            <a href="/admin">Dashboard</a>
            <span>/</span>
            <span>Authors</span>
        </div>
    </div>
</div>

<div>
    <div>
        <div>
            <h1>Authors</h1>
            <p>Manage author information for your books</p>
        </div>
        <div>
            <div>
                <input type="text" id="searchInput" placeholder="Search authors...">
            </div>
            <a href="/authors/create">
                <span>Add Author</span>
            </a>
        </div>
    </div>

    <div id="notificationArea">
        <div id="successNotification">
            <div>
                <span>✓</span>
            </div>
            <div>
                <p id="successMessage"></p>
            </div>
            <button onclick="hideNotification('successNotification')">
                <span>×</span>
            </button>
        </div>

        <div id="errorNotification">
            <div>
                <span>!</span>
            </div>
            <div>
                <p id="errorMessage"></p>
            </div>
            <button onclick="hideNotification('errorNotification')">
                <span>×</span>
            </button>
        </div>
    </div>

    <div>
        <div>
            <table>
                <thead>
                <tr>
                    <th>Author</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody id="authorsTableBody">
                </tbody>
            </table>
        </div>
    </div>

    <div id="pagination-container"></div>
</div>

<div id="deleteModal">
    <div>
        <div>
            <div>
                <div>
                    <span>!</span>
                </div>
                <div>
                    <h3 id="modal-title">Delete Author</h3>
                    <div>
                        <p id="modal-description">Are you sure you want to delete this author? This action cannot be undone.</p>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <button type="button" id="confirmDeleteBtn">Delete</button>
            <button type="button" onclick="closeModal()">Cancel</button>
        </div>
    </div>
</div>

<footer>
    <div>
        <div>
            &copy; 2025 BookApp Admin Panel. All rights reserved.
        </div>
    </div>
</footer>
</body>
</html>