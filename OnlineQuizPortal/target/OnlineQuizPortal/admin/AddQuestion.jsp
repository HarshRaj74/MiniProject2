<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  
<style>
  body {
    font-family: 'Segoe UI', sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
  }

  /* Header */
  header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 55px;
    background-color: #007bff;
    color: white;
    display: flex;
    align-items: center;
    padding: 0 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    z-index: 1001;
  }

  header h2 {
    margin: 0;
    font-size: 18px;
  }

  .burger {
    width: 25px;
    height: 20px;
    cursor: pointer;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    margin-right: 15px;
  }

  .burger div {
    height: 3px;
    background-color: white;
    border-radius: 2px;
  }

  /* Sidebar */
  nav.sidebar {
    position: fixed;
    top: 55px;
    left: -220px;
    width: 220px;
    height: calc(100vh - 55px);
    background-color: #343a40;
    padding-top: 20px;
    transition: left 0.3s ease;
    z-index: 1000;
  }

  nav.sidebar.open {
    left: 0;
  }

  nav.sidebar button {
    background: none;
    border: none;
    color: white;
    padding: 12px 20px;
    text-align: left;
    font-size: 15px;
    width: 100%;
    cursor: pointer;
  }

  nav.sidebar button:hover {
    background-color: #495057;
  }

  /* Main Content */
  main.content {
    padding: 75px 15px 20px;
    max-width: 500px;
    margin: auto;
  }

  form {
    background-color: #fff;
    padding: 20px;
    border-radius: 6px;
    box-shadow: 0 0 6px rgba(0,0,0,0.1);
  }

  label {
    font-weight: 600;
    margin-top: 12px;
    display: block;
  }

  input[type="text"],
  textarea,
  select {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
  }

  input[type="submit"] {
    background-color: #28a745;
    color: white;
    border: none;
    padding: 10px 16px;
    margin-top: 20px;
    cursor: pointer;
    border-radius: 4px;
    font-size: 15px;
  }

  input[type="submit"]:hover {
    background-color: #218838;
  }

  a.back-link {
    display: block;
    text-align: center;
    margin-top: 15px;
    color: #007bff;
    text-decoration: none;
    font-weight: 500;
  }

  a.back-link:hover {
    text-decoration: underline;
  }

  p.message {
    text-align: center;
    font-weight: 600;
    margin-bottom: 15px;
  }

  p.message.success {
    color: green;
  }

  p.message.error {
    color: red;
  }

  @media (max-width: 600px) {
    main.content {
      padding: 75px 10px 20px;
    }

    form {
      padding: 15px;
    }

    input[type="submit"] {
      width: 100%;
    }
  }
</style>


  <title>Add New Question</title>
</head>

<body>

  <header>
    <div class="burger" id="burger">
      <div></div>
      <div></div>
      <div></div>
    </div>
    <h2>Add New Question</h2>
  </header>

  <nav class="sidebar" id="sidebar">
    <button onclick="window.location.href='adminDashboard.jsp'">Dashboard</button>
    <button onclick="window.location.href='logout.jsp'">Logout</button>
  </nav>

  <main class="content">
    <% 
      String success = request.getParameter("success");
      String error = request.getParameter("error");
      if (success != null) { 
    %>
      <p class="message success"><%= success %></p>
    <% } else if (error != null) { %>
      <p class="message error"><%= error %></p>
    <% } %>

    <form action="/OnlineQuizPortal/AddQuestionServlet" method="post">
      <label>Question Text:</label><br/>
      <textarea name="questionText" rows="3" cols="50" required></textarea><br/><br/>

      <label>Option A:</label><br/>
      <input type="text" name="optionA" required/><br/><br/>

      <label>Option B:</label><br/>
      <input type="text" name="optionB" required/><br/><br/>

      <label>Option C:</label><br/>
      <input type="text" name="optionC" required/><br/><br/>

      <label>Option D:</label><br/>
      <input type="text" name="optionD" required/><br/><br/>

      <label>Correct Option:</label><br/>
      <select name="correctOption" required>
          <option value="">--Select Correct Option--</option>
          <option value="A">Option A</option>
          <option value="B">Option B</option>
          <option value="C">Option C</option>
          <option value="D">Option D</option>
      </select><br/><br/>

      <input type="submit" value="Add Question"/>
    </form>

    <a href="adminDashboard.jsp" class="back-link">Back to Dashboard</a>
  </main>

  <script>
    const burger = document.getElementById('burger');
    const sidebar = document.getElementById('sidebar');

    burger.addEventListener('click', () => {
      sidebar.classList.toggle('open');
    });
  </script>

</body>

</html>
