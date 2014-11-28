package org.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.helpers.SessionHelper;

public class GoTo extends HttpServlet {

  private final static String PRE = "pages/";
  private final static String ERROR_PAGE = PRE.concat("summary.jsp");
  private final static String TEST_PAGE = PRE.concat("attemptExam.jsp");

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    Integer i = getQuestionIndex(request);
    if ( 0 < i) {
      i --;
    }
    SessionHelper.setQuestionIndex(request, i);
    request.getRequestDispatcher(TEST_PAGE).forward(request, response);
  }

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
  }

  private Integer getQuestionIndex (HttpServletRequest request) {
    String txt = request.getParameter("question");
    return null == txt ? 0: Integer.parseInt(txt);
  }
}
