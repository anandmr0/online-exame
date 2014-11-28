package org.models;

import javax.servlet.http.HttpSession;
import org.daos.QuestionAnswerDao;
import org.db.DbConstants;
import org.db.DbHelper;
import org.helpers.GlobalHelper;
import org.helpers.SessionHelper;
import org.pojos.QuestionAnswerPojo;
import org.vos.QuestionAnswerVo;

public class QuestionAnswerModel {

  private final DbHelper _dbHelper;
  private final String _table;

  public QuestionAnswerModel(DbHelper dh, String s) {
    _dbHelper = dh;
    _table = s;
  }

  public QuestionAnswerVo[] getRandomQuestionAnswerVos() {
    QuestionAnswerVo[] vos = null;
    QuestionAnswerDao dao = new QuestionAnswerDao(_dbHelper, _table);
    Integer[] ids = dao.getAllIds();
    if (null == ids) {
      GlobalHelper.msg("Failed to generate random ids . . .");
      return vos;
    }
    vos = new QuestionAnswerVo[DbConstants.RESULT_SIZE];
    GlobalHelper.shuffle(ids);
    for (int i = 0; i < vos.length; i++) {
      vos[i] = dao.getQuestionAnswerVoForTableId(ids[i]);
    }
    return vos;
  }

  public QuestionAnswerPojo[] getQuestionAnswerPojosFor(QuestionAnswerVo[] vos) {
    QuestionAnswerPojo[] pojos = new QuestionAnswerPojo[vos.length];
    for (int i = 0; i < vos.length; i++) {
      pojos[i] = new QuestionAnswerPojo();
      pojos[i].setQsId(vos[i].getQsId());
      pojos[i].setUserAnswer(DbConstants.UNKWON_OPTION);
    }
    return pojos;
  }

  public static QuestionAnswerPojo getCurrentQuestionAnswerPojo(HttpSession session) {
    QuestionAnswerPojo pojo = null;
    Integer i = SessionHelper.getQuestionIndex(session);
    if (null != i) {
      QuestionAnswerPojo[] pojos = SessionHelper.getQuestionPojoArray(session);
      if (null != pojos && i < pojos.length) {
        pojo = pojos[i];
      }
    }
    return pojo;
  }

  public static QuestionAnswerVo getCurrentQuestionAnswerVo(HttpSession session) {
    QuestionAnswerVo vo = null;
    Integer i = SessionHelper.getQuestionIndex(session);
    if (null != i) {
      QuestionAnswerVo[] vos = SessionHelper.getQuestionVoArray(session);
      if (null != vos && i < vos.length) {
        vo = vos[i];
      }
    }
    return vo;
  }

  public static String getOptionsRadioHtml(HttpSession session) {
    QuestionAnswerPojo pojo = getCurrentQuestionAnswerPojo(session);
    QuestionAnswerVo vo = getCurrentQuestionAnswerVo(session);
    StringBuffer html = new StringBuffer();
    String str = "<input type=\"radio\" name=\"userChoice\" value=\"";
    String chk = " checked ";
    html.append(str);
    html.append("1\"");
    if (1 == pojo.getUserAnswer()) {
      html.append(chk);
    }
    html.append("/>");
    html.append(vo.getOption1());
    html.append("<br/>");
    html.append(str);
    html.append("2\"");
    if (2 == pojo.getUserAnswer()) {
      html.append(chk);
    }
    html.append("/>");
    html.append(vo.getOption2());
    html.append("<br/>");
    html.append(str);
    html.append("3\"");
    if (3 == pojo.getUserAnswer()) {
      html.append(chk);
    }
    html.append("/>");
    html.append(vo.getOption3());
    html.append("<br/>");
    html.append(str);
    html.append("4\"");
    if (4 == pojo.getUserAnswer()) {
      html.append(chk);
    }
    html.append("/>");
    html.append(vo.getOption4());
    return html.toString();
  }

  public static String getQuestionHtml(HttpSession session) {
    QuestionAnswerVo vo = getCurrentQuestionAnswerVo(session);
    return null == vo ? "" : vo.getQuestion();
  }

  public static String getQuestionId(HttpSession session) {
    QuestionAnswerVo vo = getCurrentQuestionAnswerVo(session);
    return null == vo ? "" : Integer.toString(vo.getQsId());
  }

  public static String getPaginationHtml(HttpSession session) {
    StringBuffer html = new StringBuffer();
    Integer in = SessionHelper.getQuestionIndex(session);
    in++;
    html.append(in);
    html.append(" of ");
    html.append(SessionHelper.getQuestionPojoArray(session).length);
    return html.toString();
  }

  public static String getSummaryHtml(HttpSession session) {
    StringBuffer html = new StringBuffer();
    String pre = "<input type=\"submit\" name=\"question\" value=\"";
    String classAtt = "class=\"attempted\"";
    String classNotAtt = "class=\"not-attempted\"";
    QuestionAnswerPojo[] pojos = SessionHelper.getQuestionPojoArray(session);
    if (null != pojos) {
      html.append("<tr>");
      for (int i = 0; i < pojos.length; i++) {
        html.append("<td align=\"center\">");
        html.append(pre);
        html.append(i + 1);
        html.append("\" ");
        html.append(DbConstants.UNKWON_OPTION
                == pojos[i].getUserAnswer() ? classNotAtt : classAtt);
        html.append(" /></td>");
        if (0 == (i + 1) % 5) {
          html.append("</tr><tr>");
        }
      }
      html.append("</tr>");
    }
    return html.toString();
  }

  public static String getResultHtml(HttpSession session) {
    StringBuffer html = new StringBuffer();
    String pre = "<label ";
    String classW = "class=\"wrong-label\"";
    String classC = "class=\"right-label\"";
    QuestionAnswerPojo[] pojos = SessionHelper.getQuestionPojoArray(session);
    QuestionAnswerVo[] vos = SessionHelper.getQuestionVoArray(session);
    if (null != pojos && null != vos ) {
      html.append("<tr>");
      for (int i = 0; i < pojos.length; i++) {
        html.append("<td align=\"center\">");
        html.append(pre);
        html.append ( vos[i].getAnswer() != pojos[i].getUserAnswer() ? classW : classC );
        html.append(">");
        html.append(i + 1);
        html.append("</label></td>");
        if (0 == (i + 1) % 5) {
          html.append("</tr><tr>");
        }
      }
      html.append("</tr>");
    }
    return html.toString();
  }
}
