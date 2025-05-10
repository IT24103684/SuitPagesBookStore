<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users List</title>
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
                    <a href="/users">Users</a>
                </div>
            </div>
            <div>
                <a href="/admin/profile">
                    <i class="fas fa-user-circle"></i>
                </a>
                <a href="/logout">
                    <i class="fas fa-sign-out-alt"></i>
                </a>
                <button id="mobileMenuButton">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
        </div>
    </div>
    <!-- Mobile Navigation Menu -->
    <div id="mobileMenu">
        <div>
            <div>
                <a href="/admin">Dashboard</a>
                <a href="/books">Books</a>
                <a href="/authors">Authors</a>
                <a href="/users">Users</a>
            </div>
        </div>
    </div>
</nav>

<div>
    <div>
        <div>
            <a href="/admin">Dashboard</a>
            <span>/</span>
            <span>Users</span>
        </div>
    </div>
</div>

<div>

    <div>
        <div>
            <h1>Users</h1>
            <p>Manage user accounts</p>
        </div>
        <div>
            <div>
                <input type="text" id="searchInput" placeholder="Search users...">
                <div>
                    <i class="fas fa-search"></i>
                </div>
            </div>
        </div>
    </div>

    <div>
        <div>
            <table>
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Gender</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody id="usersTableBody">
                <!-- Loading state -->
                <tr>
                    <td colspan="5">
                        <div>
                            <i class="fas fa-spinner fa-spin"></i>
                            <p>Loading users...</p>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div id="deleteModal">
    <div>
        <div>
            <div></div>
        </div>
        <div>
            <div>
                <div>
                    <div>
                        <i class="fas fa-exclamation-triangle"></i>
                    </div>
                    <div>
                        <h3 id="modal-title">Delete User</h3>
                        <div>
                            <p id="modal-description">Are you sure you want to delete this user? This action cannot be undone.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <button type="button" id="confirmDeleteBtn">Delete</button>
                <button type="button" id="cancelDeleteBtn">Cancel</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>