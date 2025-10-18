package com.quiz.dao;

import com.quiz.model.Question;
import com.quiz.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class QuestionDAO {
	

    public boolean addQuestion(Question question) {
        boolean status = false;

        try (Connection con = DBConnection.getConnection()) {
            String sql = "INSERT INTO question (category, question_text, option_a, option_b, option_c, option_d, correct_option) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, question.getCategory());
            ps.setString(2, question.getQuestionText());
            ps.setString(3, question.getOptionA());
            ps.setString(4, question.getOptionB());
            ps.setString(5, question.getOptionC());
            ps.setString(6, question.getOptionD());
            ps.setString(7, question.getCorrectOption());

            int inserted = ps.executeUpdate();
            status = inserted > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    public List<Question> getAllQuestions() {
        List<Question> questions = new ArrayList<>();

        try (Connection con = DBConnection.getConnection()) {
            String sql = "SELECT * FROM question";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Question q = new Question();
                q.setCategory(rs.getString("category"));
                q.setQuestionText(rs.getString("question_text"));
                q.setOptionA(rs.getString("option_a"));
                q.setOptionB(rs.getString("option_b"));
                q.setOptionC(rs.getString("option_c"));
                q.setOptionD(rs.getString("option_d"));
                q.setCorrectOption(rs.getString("correct_option"));
                questions.add(q);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return questions;
    }

}
