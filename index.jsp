<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Welcome - User Registration System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #121212;
            color: #ffffff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding-top: 80px;
        }

        .container {
            max-width: 700px;
            margin: auto;
            background-color: #1e1e1e;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.6);
            transition: all 0.3s ease;
            text-align: center;
        }

        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: #00bcd4;
            font-weight: bold;
        }

        p {
            font-size: 1.1rem;
            color: #cccccc;
            margin-bottom: 40px;
        }
        
        .btn{
            color: #00bcd4;
            font-size: 20px;
            border: 1px solid #00bcd4;
            margin-left: 10px;
            margin-right: 10px;
        }

        
        footer {
            margin-top: 40px;
            text-align: center;
            color: #777;
            font-size: 0.9rem;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Welcome to User Registration System</h1>
        <p>Please register users and view all user data through a clean and soft dark interface.</p>

        <a href="register.jsp" class="btn btn-custom btn-register">Register User</a>
        <a href="showall.jsp" class="btn btn-custom btn-users">View All Users</a>

        <footer>
            <p>&copy; 2025 | Designed by Harsh</p>
        </footer>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
