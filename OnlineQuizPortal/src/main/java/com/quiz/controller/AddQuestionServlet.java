package com.quiz.controller;

import com.quiz.dao.QuestionDAO;
import com.quiz.model.Question;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


public class AddQuestionServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String category = req.getParameter("category");
    	String questionText = req.getParameter("questionText");
        String optionA = req.getParameter("optionA");
        String optionB = req.getParameter("optionB");
        String optionC = req.getParameter("optionC");
        String optionD = req.getParameter("optionD");
        String correctOption = req.getParameter("correctOption");

        // For now, hardcoding quizId. You can later pass it from the form or session.
        int quizId = 1;

        Question question = new Question(category, questionText, optionA, optionB, optionC, optionD, correctOption);
        QuestionDAO dao = new QuestionDAO();

        boolean success = dao.addQuestion(question);

        if (success) {
            resp.sendRedirect("admin/AddQuestion.jsp?success=Question+added+successfully");
        } else {
            resp.sendRedirect("admin/AddQuestion.jsp?error=Failed+to+add+question");
        }
    }
}