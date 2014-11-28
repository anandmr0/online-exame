package org.vos;

import java.io.Serializable;

/**
 * 
 * QuestionAnswerVo will reflect the table actual data along with correct answer
 */

public class QuestionAnswerVo implements Serializable {

  private int id;
  private int qsId;
  private String question;
  private String option1;
  private String option2;
  private String option3;
  private String option4;
  private int answer;

  public QuestionAnswerVo() {
  }

  /**
   * @return the id
   */
  public int getId() {
    return id;
  }

  /**
   * @param id the id to set
   */
  public void setId(int id) {
    this.id = id;
  }

  /**
   * @return the qsId
   */
  public int getQsId() {
    return qsId;
  }

  /**
   * @param qsId the qsId to set
   */
  public void setQsId(int qsId) {
    this.qsId = qsId;
  }

  /**
   * @return the question
   */
  public String getQuestion() {
    return question;
  }

  /**
   * @param question the question to set
   */
  public void setQuestion(String question) {
    this.question = question;
  }

  /**
   * @return the option1
   */
  public String getOption1() {
    return option1;
  }

  /**
   * @param option1 the option1 to set
   */
  public void setOption1(String option1) {
    this.option1 = option1;
  }

  /**
   * @return the option2
   */
  public String getOption2() {
    return option2;
  }

  /**
   * @param option2 the option2 to set
   */
  public void setOption2(String option2) {
    this.option2 = option2;
  }

  /**
   * @return the option3
   */
  public String getOption3() {
    return option3;
  }

  /**
   * @param option3 the option3 to set
   */
  public void setOption3(String option3) {
    this.option3 = option3;
  }

  /**
   * @return the option4
   */
  public String getOption4() {
    return option4;
  }

  /**
   * @param option4 the option4 to set
   */
  public void setOption4(String option4) {
    this.option4 = option4;
  }

  /**
   * @return the answer
   */
  public int getAnswer() {
    return answer;
  }

  /**
   * @param answer the answer to set
   */
  public void setAnswer(int answer) {
    this.answer = answer;
  }
}
