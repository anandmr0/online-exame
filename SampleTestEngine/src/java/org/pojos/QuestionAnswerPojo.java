package org.pojos;

import java.io.Serializable;

/**
 * 
 * QuestionAnswerPojo will contain data only required by user for attempting
 * question and not the answer.
 */
public class QuestionAnswerPojo implements Serializable {

  private int qsId;
  private int userAnswer;

  public QuestionAnswerPojo() {
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
   * @return the userAnswer
   */
  public int getUserAnswer() {
    return userAnswer;
  }

  /**
   * @param userAnswer the userAnswer to set
   */
  public void setUserAnswer(int userAnswer) {
    this.userAnswer = userAnswer;
  }
}
