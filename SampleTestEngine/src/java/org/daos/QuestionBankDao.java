package org.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.db.DbHelper;
import org.helpers.GlobalHelper;
import org.vos.QuestionBankVo;

public class QuestionBankDao {

  private DbHelper _dbHelper;
  private final static String TABLE_NAME = "question_bank_table";
  private final static String ID_CLM = "id";
  private final static String TB_NM_CLM = "tableName";
  private final static String DIS_NM_CLM = "displayName";

  public QuestionBankDao(DbHelper dbHelper) {
    _dbHelper = dbHelper;
  }

  public QuestionBankVo[] getAllQuestionBankVos() {
    QuestionBankVo[] vos = null;
    Connection con = _dbHelper.getConnection();
    if (null == con) {
      GlobalHelper.msg("Problem with Connection: not available !!");
      return vos;
    }
    try {
      Statement st = con.createStatement();
      ResultSet rs = st.executeQuery(getAllCountQuery());
      if (null != rs && rs.next()) {
        int s = rs.getInt(1);
        if (0 < s) {
          vos = new QuestionBankVo[s];
          rs.close();
          rs = null;
          rs = st.executeQuery(getAllRecordQuery());
          for (s = 0; rs.next(); s++) {
            vos[s] = getFilledQuestionBankVoFor(rs);
          }
        }
      }
      st.close();
      con.close();
    } catch (SQLException se) {
      GlobalHelper.msg(String.format("Problem with Db: %s", se));
      vos = null;
    }
    return vos;
  }

  public QuestionBankVo getQuestionBankVoFor(int id) {
    QuestionBankVo vo = null;
    Connection con = _dbHelper.getConnection();
    if (null == con) {
      GlobalHelper.msg("Problem with Connection: not available !!");
      return vo;
    }
    try {
      PreparedStatement ps = con.prepareStatement(getRecordQueryForId());
      ps.setInt(1, id);
      ResultSet rs = ps.executeQuery();
      if (null != rs && rs.next()) {
        vo = getFilledQuestionBankVoFor(rs);
      }
      ps.close();
      con.close();
    } catch (SQLException se) {
      GlobalHelper.msg(String.format("Problem with Db: %s", se));
      vo = null;
    }
    return vo;
  }

  private String getRecordQueryForId() {
    StringBuilder build = new StringBuilder();
    build.append("select * from ");
    build.append(TABLE_NAME);
    build.append(" where ");
    build.append(ID_CLM);
    build.append("=?");
    return build.toString();
  }

  private String getAllRecordQuery() {
    StringBuilder build = new StringBuilder();
    build.append("select * from ");
    build.append(TABLE_NAME);
    return build.toString();
  }

  private String getAllCountQuery() {
    StringBuilder build = new StringBuilder();
    build.append("select count(");
    build.append(ID_CLM);
    build.append(") from ");
    build.append(TABLE_NAME);
    return build.toString();
  }

  private QuestionBankVo getFilledQuestionBankVoFor(ResultSet rs) {
    QuestionBankVo vo = new QuestionBankVo();
    try {
      vo.setId(rs.getInt(ID_CLM));
      vo.setTableName(rs.getString(TB_NM_CLM));
      vo.setDisplayName(rs.getString(DIS_NM_CLM));
    } catch (SQLException se) {
      GlobalHelper.msg(String.format("Problem with result set: %s", se));
      vo = null;
    }
    return vo;
  }
}
