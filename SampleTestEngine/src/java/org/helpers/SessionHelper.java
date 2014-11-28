package org.helpers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.db.DbConstants;
import org.pojos.QuestionAnswerPojo;
import org.vos.QuestionAnswerVo;

public final class SessionHelper {

  private static final String USER = "user.name";
  private static final String TABLE = "table.name";
  private static final String QSN_IND = "qsn.index";
  private static final String QSN_SET = "qsn.set.array";
  private static final String ANS_SET = "ans.set.array";
  private static final String SESSION_STATUS = "session.status";
  public static final Byte SESSION_LOGIN = 1;
  public static final Byte SESSION_EXAM = 2;
  public static final Byte SESSION_RESULT = 3;
  public static final Byte SESSION_END = 4;

  private SessionHelper() {
  }

  public static String getUserName(HttpServletRequest request) {
    return getUserName(request.getSession());
  }

  public static String getUserName(HttpSession session) {
    Object temp = session.getAttribute(USER);
    return temp instanceof String ? (String) temp : "";
  }

  public static void setUserName(HttpServletRequest request, String user) {
    setUserName(request.getSession(), user);
  }

  public static void setUserName(HttpSession session, String user) {
    session.setAttribute(USER, user);
  }

  public static String getTableName(HttpServletRequest request) {
    return getTableName(request.getSession());
  }

  public static String getTableName(HttpSession session) {
    Object temp = session.getAttribute(TABLE);
    return temp instanceof String ? (String) temp : "";
  }

  public static void setTableName(HttpServletRequest request, String table) {
    setTableName(request.getSession(), table);
  }

  public static void setTableName(HttpSession session, String table) {
    session.setAttribute(TABLE, table);
  }

  public static Integer getQuestionIndex(HttpServletRequest request) {
    return getQuestionIndex(request.getSession());
  }

  public static Integer getQuestionIndex(HttpSession session) {
    Object temp = session.getAttribute(QSN_IND);
    return temp instanceof Integer ? (Integer) temp : DbConstants.EMPTY_ID;
  }

  public static void setQuestionIndex(HttpServletRequest request, Integer ind) {
    setQuestionIndex(request.getSession(), ind);
  }

  public static void setQuestionIndex(HttpSession session, Integer ind) {
    session.setAttribute(QSN_IND, ind);
  }

  public static QuestionAnswerPojo[] getQuestionPojoArray(HttpServletRequest request) {
    return getQuestionPojoArray(request.getSession());
  }

  public static QuestionAnswerPojo[] getQuestionPojoArray(HttpSession session) {
    Object temp[] = (Object[]) session.getAttribute(QSN_SET);
    return temp instanceof QuestionAnswerPojo[] ? (QuestionAnswerPojo[]) temp : null;
  }

  public static void setQuestionPojoArray(HttpServletRequest request, QuestionAnswerPojo[] arr) {
    setQuestionPojoArray(request.getSession(), arr);
  }

  public static void setQuestionPojoArray(HttpSession session, QuestionAnswerPojo[] arr) {
    session.setAttribute(QSN_SET, arr);
  }

  public static QuestionAnswerVo[] getQuestionVoArray(HttpServletRequest request) {
    return getQuestionVoArray(request.getSession());
  }

  public static QuestionAnswerVo[] getQuestionVoArray(HttpSession session) {
    Object temp[] = (Object[]) session.getAttribute(ANS_SET);
    return temp instanceof QuestionAnswerVo[] ? (QuestionAnswerVo[]) temp : null;
  }

  public static void setQuestionVoArray(HttpServletRequest request, QuestionAnswerVo[] arr) {
    setQuestionVoArray(request.getSession(), arr);
  }

  public static void setQuestionVoArray(HttpSession session, QuestionAnswerVo[] arr) {
    session.setAttribute(ANS_SET, arr);
  }

  public static boolean isValidSession(HttpSession session) {
    boolean valid = true;
    if (getUserName(session).isEmpty()) {
      valid = false;
    }
    if (getTableName(session).isEmpty()) {
      valid = false;
    }
    return valid;
  }

  public static boolean isValidSession(HttpServletRequest request) {
    return isValidSession(request.getSession());
  }

  public static Byte getSessionStatus(HttpServletRequest request) {
    return getSessionStatus(request.getSession());
  }

  public static Byte getSessionStatus(HttpSession session) {
    Object temp = session.getAttribute(SESSION_STATUS);
    return temp instanceof Byte ? (Byte) temp : SESSION_LOGIN;
  }

  public static void setSessionStatus(HttpServletRequest request, Byte status) {
    setSessionStatus(request.getSession(), status);
  }

  public static void setSessionStatus(HttpSession session, Byte status) {
    session.setAttribute(SESSION_STATUS, status);
  }

  public static void destroySession(HttpServletRequest request) {
    destroySession(request.getSession());
  }

  public static void destroySession(HttpSession session) {
    session.removeAttribute(USER);
    session.removeAttribute(QSN_IND);
    session.removeAttribute(QSN_SET);
    session.removeAttribute(ANS_SET);
    session.removeAttribute(SESSION_STATUS);
    session.removeAttribute(TABLE);
    session.invalidate();
    session = null;
  }
}
