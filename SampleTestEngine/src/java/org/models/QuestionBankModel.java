package org.models;

import org.daos.QuestionBankDao;
import org.db.DbHelper;
import org.vos.QuestionBankVo;

public class QuestionBankModel {

  private DbHelper _DbHelper;

  public QuestionBankModel(String path) {
    _DbHelper = new DbHelper(path);
  }

  public String getSubjectOptionsHtml() {
    StringBuffer html = new StringBuffer();
    QuestionBankVo[] vos = new QuestionBankDao(_DbHelper).getAllQuestionBankVos();
    if ( null != vos ) {
      for ( QuestionBankVo vo : vos ) {
        html.append("<option value=\"");
        html.append(vo.getTableName());
        html.append("\">");
        html.append(vo.getDisplayName());
        html.append("</option>");
      }
    }
    return html.toString();
  }

}
