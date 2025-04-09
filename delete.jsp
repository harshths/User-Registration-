<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #1e1e2f;
            color: #f5f5f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .form-container {
            background-color: #2a2a40;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(255, 0, 0, 0.1);
            max-width: 500px;
            margin: 100px auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #ff4d4d;
        }

        .form-control {
            background-color: #34344e;
            border: 1px solid #555;
            color: #fff;
        }

        .form-control::placeholder {
            color: #aaa;
        }

        .form-control:focus {
            background-color: #3e3e5e;
            border-color: #ff4d4d;
            color: #fff;
        }

        .btn-delete {
            background-color: #ff4d4d;
            color: white;
            font-weight: bold;
            border: none;
        }

        .btn-delete:hover {
            background-color: #cc0000;
        }

        .links {
            text-align: center;
            margin-top: 20px;
        }

        .links a {
            color: #ff4d4d;
            margin: 0 10px;
            text-decoration: none;
        }

        .links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h1>Delete User</h1>
        <form method="post" action="delete2.jsp">
            <div class="mb-3">
                <input type="text" name="id" class="form-control" placeholder="Enter ID" required>
            </div>
            <div class="mb-3">
                <input type="password" name="pass" class="form-control" placeholder="Enter Password" required>
            </div>
            <button type="submit" class="btn btn-delete w-100">Delete</button>
        </form>
        <div class="links mt-3">
            <a href="index.jsp">Home</a>
            <a href="showall.jsp">All Users</a>
        </div>
    </div>

</body>
</html>
