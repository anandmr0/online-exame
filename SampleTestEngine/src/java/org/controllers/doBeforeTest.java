package org.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.db.DbHelper;
import org.helpers.GlobalHelper;
import org.helpers.SessionHelper;
import org.models.QuestionAnswerModel;
import org.pojos.QuestionAnswerPojo;
import org.vos.QuestionAnswerVo;

public class doBeforeTest extends HttpServlet {

  private final static String INPUT_PAGE = "pages/index.jsp";
  private final static String TEST_PAGE = "pages/attemptExam.jsp";

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    request.getRequestDispatcher(SessionHelper.isValidSession(request)
            ? TEST_PAGE : INPUT_PAGE).forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String[] params = getParams(request);
    String[] msg = validate(params);
    boolean valid = msg[0].isEmpty() && msg[1].isEmpty();
    if (valid) {
      makeEntriesForSession(request, params);
      request.getRequestDispatcher(TEST_PAGE).forward(request, response);
      return;
    }
    request.setAttribute("error.msg", msg);
    request.getRequestDispatcher(INPUT_PAGE).forward(request, response);
  }

  private void makeEntriesForSession(HttpServletRequest request, String[] params) {
    SessionHelper.setUserName(request, params[0]);
    SessionHelper.setTableName(request, params[1]);
    SessionHelper.setSessionStatus(request, SessionHelper.SESSION_EXAM);
    SessionHelper.setQuestionIndex(request, 0);
    String path = getServletContext().getRealPath("/");
    DbHelper dh = new DbHelper(path);
    QuestionAnswerModel model = new QuestionAnswerModel(dh, params[1]);
    QuestionAnswerVo[] vos = model.getRandomQuestionAnswerVos();
    QuestionAnswerPojo[] pojos = model.getQuestionAnswerPojosFor(vos);
    SessionHelper.setQuestionPojoArray(request, pojos);
    SessionHelper.setQuestionVoArray(request, vos);
  }

  private String[] getParams(HttpServletRequest request) {
    return new String[]{
              request.getParameter("userNameTxt"),
              request.getParameter("subjectBox")
            };
  }

  private String[] validate(String[] params) {
    return new String[]{
              GlobalHelper.isValidString(params[0]) ? "" : "Please enter User name !!",
              GlobalHelper.isValidString(params[1]) && !params[1].equalsIgnoreCase("select")
              ? "" : "Please select Subject !!"
            };
  }
}
