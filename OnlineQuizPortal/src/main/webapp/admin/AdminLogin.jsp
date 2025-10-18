<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <style>
        body {
            margin: 0;
            font-family: "Segoe UI", sans-serif;
            background-color: #f0f2f5;
            display: flex;
            height: 100vh;
        }

        .left-section {
            flex: 1;
            background-color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 40px;
        }

        .welcome-text {
            font-size: 28px;
            font-weight: 600;
            color: #333;
            margin-bottom: 20px;
            margin-top: 0px;
        }

        form {
            width: 80%;
            max-width: 350px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #444;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 16px;
            outline: none;
            transition: 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
        }

        button {
            width: 100%;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            margin-top: 20px;
            padding: 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        .right-section {
            flex: 1;
            background-color: #e9f2ff;
            display: flex;
            flex-direction: column;
    		justify-content: flex-start;
            justify-content: center;
            align-items: center;
        }

        .pug-img {
            width: 90%;
            max-width: 600px;
            height: auto;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 15px;
            font-weight: 500;
        }
    </style>
</head>
<body>

    
    <div class="right-section">
        <div class="welcome-text">Welcome Back</div><br><br>

        <% 
		    String error = (String) request.getAttribute("error");
		    if(error != null) {
		%>
		    <div class="error"><%= error %></div>
		<% } %>
        <form action="<%=request.getContextPath()%>/Admin/AdminLoginServlet" method="post">
            <label for="username">Username</label>
            <input type="text" id="email" name="username" placeholder="Enter your username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <button type="submit">Login</button>
        </form>
    </div>

    
    <div class="left-section">
        <img class="pug-img" src="https://www.pawlovetreats.com/cdn/shop/articles/pembroke-welsh-corgi-puppy_1000x.jpg?v=1628638716" alt="Cute Pug">
    </div>

</body>
</html>
