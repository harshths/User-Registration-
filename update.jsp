<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>User Registration</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <style>
            body {
                background-color: #121212;
                color: #ffffff;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }



            .form-card {
                background-color: #1e1e1e;
                border-radius: 12px;
                padding: 30px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.6);
                transition: all 0.3s ease;
            }

            .form-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            }

            .form-title {
                font-weight: bold;
                text-align: center;
                color: #00bcd4;
                margin-bottom: 25px;
            }

            label {
                color: #cccccc;
                font-weight: 500;
            }

            .form-control {
                background-color: #2c2c2c;
                border: 1px solid #444;
                color: #ffffff;
            }

            .form-control:focus {
                background-color: #2c2c2c;
                border-color: #00bcd4;
                color: #ffffff;
                box-shadow: 0 0 5px #00bcd4;
            }

            .btn-primary {
                background-color: #007bff;
                border-color: #007bff;
                font-weight: bold;
                transition: background-color 0.3s, box-shadow 0.3s;
            }

            .btn-primary:hover {
                background-color: #0056b3;
            }

            .footer {
                text-align: center;
                margin-top: 40px;
                font-size: 14px;
                color: #777;
            }

            ::-webkit-input-placeholder { /* Chrome, Safari, Edge (old) */
                color: #ffffff !important;
                 font-weight: 300;
  letter-spacing: 0.5px;
            }

        </style>

    </head>
    <body>

        <div class="container mt-5">
            <div class="form-card mx-auto" style="max-width: 600px;">
                <h3 class="form-title">Update User Information</h3>

                <form method="post" action="update2.jsp">
                    
                    <div style="color: red;" class="form-section">Please Enter Username & Password first....</div>
                    <div class="mb-2"><input type="number" name="id" class="form-control" placeholder="User ID" required></div>
                    <div class="mb-2"><input type="password" name="pass" class="form-control" placeholder="Password" required></div>
                    <br>
                    <div class="form-section">Personal Details</div>
                    <div class="mb-2"><input type="text" name="name" class="form-control" placeholder="Username" required></div>
                    <div class="mb-2"><input type="number" name="mobile" class="form-control" placeholder="Phone" required></div>
                    <div class="mb-2"><input type="text" name="city" class="form-control" placeholder="City"></div>
                    <div class="mb-2"><input type="number" name="pincode" class="form-control" placeholder="Pincode"></div>
                    <div class="mb-2">
                        <select class="form-control" name="distcode" aria-label="Default select example" required>
                            <option value="" selected>Select District</option>
                            <option value="1">Bilaspur</option>
                            <option value="2">Raipur</option>
                            <option value="3">Janjgir</option>
                            <option value="4">Durg</option>
                            <option value="5">Korba</option>
                        </select>
                    </div>
                    
                    <div class="mb-2"><input type="text" name="state" class="form-control" placeholder="State"></div>

                    <div class="form-section">Department</div>
                    <div class="mb-2">
                        <select required class="form-control" name="deptcode" aria-label="Default select example">
                            <option value="dep" selected>Select Department</option>
                            <option value="1">CSIT</option>
                            <option value="2">Mathematics</option>
                            <option value="3">Physics</option>
                            <option value="4">History</option>
                            <option value="5">Psycology</option>
                        </select>
                    </div>

                    <div class="form-section">DDO</div>
                    <div class="mb-2">
                        <select required class="form-control" name="ddocode" aria-label="Default select example">
                            <option value="" selected>Select DDO Office</option>
                            <option value="1">A</option>
                            <option value="2">B</option>
                            <option value="3">C</option>
                            <option value="4">D</option>
                            <option value="5">E</option>
                        </select>
                    </div>

                    <div class="form-section">Bank</div>
                    <div class="mb-2">
                        <select required class="form-control" name="bankcode" aria-label="Default select example">
                            <option value="" selected>Select Bank</option>
                            <option value="1">SBI</option>
                            <option value="2">PNB</option>
                            <option value="3">HDFC</option>
                        </select>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>

                </form>

                <div class="footer-links mt-3">
                    <a href="index.jsp">Home</a>
                    <a href="login.jsp">Login</a>
                    <a href="showall.jsp">All Users</a>
                </div>

                <div class="footer-text">
                    &copy; 2025 - Created by Harsh
                </div>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
