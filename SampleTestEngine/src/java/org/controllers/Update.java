package org.controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.db.DbConstants;
import org.helpers.GlobalHelper;
import org.helpers.SessionHelper;
import org.models.QuestionAnswerModel;
import org.pojos.QuestionAnswerPojo;

public class Update extends HttpServlet {

  private final static String DIR = "pages/";
  private final static String EXAM_PAGE = DIR.concat("attemptExam.jsp");
  private final static String SUMMARY_PAGE = DIR.concat("summary.jsp");
  private final static String END_PAGE = DIR.concat("endExam.jsp");

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
          throws IOException, ServletException {
    GlobalHelper.msg("Redirecting to input page via get . . .");
    request.getRequestDispatcher(EXAM_PAGE).forward(request, response);
  }

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response)
          throws IOException, ServletException {
    /* what ever may the action, the current question answer has to be updated */
    GlobalHelper.msg("Processing user options . . .");
    updateQuestionPojoInSession(request);
    String action = getAction(request);
    GlobalHelper.msg(String.format("action feteched : %s", action));
    RequestDispatcher rd = null;
    if (isNext(action)) {
      updateQuestionIndex(request, 1);
      rd = request.getRequestDispatcher(EXAM_PAGE);
    } else if (isPrevious(action)) {
      updateQuestionIndex(request, -1);
      rd = request.getRequestDispatcher(EXAM_PAGE);
    } else if (isSummary(action)) {
      /* show summary  page */
      rd = request.getRequestDispatcher(SUMMARY_PAGE);
    } else if (isEndExam(action)) {
      /* end exam*/
      rd = request.getRequestDispatcher(END_PAGE);
    } else {
      /* redirect to input page */
      GlobalHelper.msg("no proper navigation detected !!");
      rd = request.getRequestDispatcher(EXAM_PAGE);
    }
    rd.forward(request, response);
  }

  private void updateQuestionPojoInSession(HttpServletRequest request) {
    QuestionAnswerPojo pojo =
            QuestionAnswerModel.getCurrentQuestionAnswerPojo(request.getSession());
    if (null != pojo) {
      GlobalHelper.msg(String.format("user choice :%d", pojo.getUserAnswer()));
      pojo.setUserAnswer(getOption(request));
      GlobalHelper.msg(String.format("user choice :%d", pojo.getUserAnswer()));
    }
  }

  private void updateQuestionIndex(HttpServletRequest request, int by) {
    Integer i = SessionHelper.getQuestionIndex(request);
    GlobalHelper.msg(String.format("question index :%d", i));
    Integer len = SessionHelper.getQuestionPojoArray(request).length;
    if (null != i) {
      if (0 < by) { /* next */
        if (i + 1 < len) {
          i++;
        }
      } else { /* previous */
        if (0 <= i - 1) {
          i--;
        }
      }
    }
    SessionHelper.setQuestionIndex(request, i);
    GlobalHelper.msg(String.format("question index :%d", i));
  }

  private Integer getOption(HttpServletRequest request) {
    String option = request.getParameter("userChoice");
    return null == option ? DbConstants.UNKWON_OPTION : Integer.parseInt(option);
  }

  private String getAction(HttpServletRequest request) {
    String action = request.getParameter("navigate");
    return null == action ? "" : action;
  }

  private boolean isNext(String action) {
    return action.equalsIgnoreCase("Next >>");
  }

  private boolean isPrevious(String action) {
    return action.equalsIgnoreCase("<< Previous");
  }

  private boolean isSummary(String action) {
    return action.equalsIgnoreCase("Summary");
  }

  private boolean isEndExam(String action) {
    return action.equalsIgnoreCase("End Exam");
  }
}
