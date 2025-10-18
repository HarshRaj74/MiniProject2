package com.quiz.model;

public class Question {
    private int questionId; // optional if auto-generated
    private int quizId; 
    private String category;// assuming you'll associate questions with quizzes
    private String questionText;
    private String optionA;
    private String optionB;
    private String optionC;
    private String optionD;
    private String correctOption;

    // Constructors
    public Question() {}

    public Question(String category, String questionText, String optionA, String optionB, String optionC, String optionD, String correctOption) {
    	this.category = category;
    	this.questionText = questionText;
        this.optionA = optionA;
        this.optionB = optionB;
        this.optionC = optionC;
        this.optionD = optionD;
        this.correctOption = correctOption;
    }

    // Getters and Setters
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    
    
    public String getQuestionText() { return questionText; }
    public void setQuestionText(String questionText) { this.questionText = questionText; }



    public String getOptionA() { return optionA; }
    public void setOptionA(String optionA) { this.optionA = optionA; }

    public String getOptionB() { return optionB; }
    public void setOptionB(String optionB) { this.optionB = optionB; }

    public String getOptionC() { return optionC; }
    public void setOptionC(String optionC) { this.optionC = optionC; }

    public String getOptionD() { return optionD; }
    public void setOptionD(String optionD) { this.optionD = optionD; }

    public String getCorrectOption() { return correctOption; }
    public void setCorrectOption(String correctOption) { this.correctOption = correctOption; }
}
