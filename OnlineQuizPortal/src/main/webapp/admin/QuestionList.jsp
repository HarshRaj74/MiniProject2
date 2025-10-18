<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.quiz.model.Question" %>
<html>
<head>
    <title>Question List</title>
</head>
<body>
    <h2>All Questions</h2>
    <table border="1">
        <tr>
            <th>Question</th>
            <th>Option A</th>
            <th>Option B</th>
            <th>Option C</th>
            <th>Option D</th>
            <th>Correct Option</th>
        </tr>
        <%
            List<Question> questions = (List<Question>) request.getAttribute("questions");
            if (questions != null) {
                for (Question q : questions) {
        %>
        <tr>
            <td><%= q.getQuestionText() %></td>
            <td><%= q.getOptionA() %></td>
            <td><%= q.getOptionC() %></td>
            <td><%= q.getOptionD() %></td>
            <td><%= q.getCorrectOption() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr><td colspan="6">No questions found.</td></tr>
        <%
            }
        %>
    </table>
</body>
</html>