<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Dark Theme CSS -->
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .form-container {
            background-color: #1e1e1e;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.6);
            max-width: 500px;
            margin: 100px auto;
            transition: all 0.3s ease;
        }

        .form-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        h2 {
            text-align: center;
            color: #00bcd4;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .form-control {
            background-color: #2c2c2c;
            color: #ffffff;
            border: 1px solid #444;
        }

        .form-control:focus {
            background-color: #2c2c2c;
            color: #ffffff;
            border-color: #00bcd4;
            box-shadow: 0 0 0 0.2rem rgba(0, 188, 212, 0.25);
        }

        .btn-custom {
            background-color: #007bff;
            color: white;
            font-weight: bold;
            border: none;
            width: 100%;
            padding: 10px;
            transition: background-color 0.3s ease;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }

        .link-style {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #00bcd4;
            text-decoration: none;
            font-weight: bold;
        }

        .link-style:hover {
            color: #ffffff;
            text-decoration: underline;
        }

        .footer {
            text-align: center;
            margin-top: 40px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Login</h2>
        <form action="show.jsp" method="post">
            <div class="mb-3">
                <label for="username" class="form-label">Username ID</label>
                <input type="text" class="form-control" id="username" name="id" required>
            </div>
            <div class="mb-4">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="pass" required>
            </div>
            <button type="submit" class="btn btn-custom">Login</button>
        </form>
        <a href="index.jsp" class="link-style">← Back to Registration</a>
    </div>

    <div class="footer">
        &copy; 2025 | Designed in Dark Mode by Harsh
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
