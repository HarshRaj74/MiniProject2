package com.quiz.controller;

import com.quiz.dao.QuestionDAO;
import com.quiz.model.Question;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/questionlist")
public class QuestionListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        QuestionDAO dao = new QuestionDAO();
        List<Question> questions = dao.getAllQuestions();

        req.setAttribute("questions", questions);
        req.getRequestDispatcher("admin/QuestionList.jsp").forward(req, resp);
    }
}