package org.daos;

import java.sql.*;
import org.db.DbHelper;
import org.helpers.GlobalHelper;
import org.vos.QuestionAnswerVo;

public class QuestionAnswerDao {

  private DbHelper _dbHelper;
  private final String TABLE_NAME;
  private final static String TB_ID_CLM = "id";
  private final static String QSN_ID_CLM = "qsId";
  private final static String QSN_CLM = "question";
  private final static String OPT1_CLM = "option1";
  private final static String OPT2_CLM = "option2";
  private final static String OPT3_CLM = "option3";
  private final static String OPT4_CLM = "option4";
  private final static String ASN_CLM = "answer";

  public QuestionAnswerDao(DbHelper dbHelper, String tb) {
    _dbHelper = dbHelper;
    TABLE_NAME = tb;
  }

  public QuestionAnswerVo getQuestionAnswerVoForTableId(int tblId) {
    QuestionAnswerVo vo = null;
    Connection con = _dbHelper.getConnection();
    if (null == con) {
      return vo;
    }
    PreparedStatement ps = null;
    try {
      ps = con.prepareStatement(getQuestionIdQueryWhere());
      ps.setInt(1, tblId);
      ResultSet rs = ps.executeQuery();
      if (null != rs && rs.next()) {
        vo = getFilledQuestionAnswerVo(rs);
      } else {
        GlobalHelper.msg(String.format("Failed to load record for is: %d",tblId));
      }
      ps.close();
      con.close();
    } catch (SQLException se) {
      vo = null;
    }
    return vo;
  }

  private String getQuestionIdQueryWhere() {
    StringBuilder build = new StringBuilder();
    build.append("select * from ");
    build.append(TABLE_NAME);
    build.append(" where ");
    build.append(TB_ID_CLM);
    build.append("=?");
    return build.toString();
  }

  private String getCountQuery() {
    StringBuilder build = new StringBuilder();
    build.append("select count(");
    build.append(QSN_ID_CLM);
    build.append(") from ");
    build.append(TABLE_NAME);
    return build.toString();
  }
  
  private String getIdQuery() {
    StringBuilder build = new StringBuilder();
    build.append("select ");
    build.append(TB_ID_CLM);
    build.append(" from ");
    build.append(TABLE_NAME);
    build.append(" order by ");
    build.append(TB_ID_CLM);
    return build.toString();
  }

  public Integer[] getAllIds() {
    Integer[] ids = null;
    Connection con = _dbHelper.getConnection();
    if (null == con) {
      return ids;
    }
    Statement ps = null;
    try {
      ps = con.createStatement();
      
      ResultSet rs = ps.executeQuery(getCountQuery());
      if (null != rs ) {
        if ( rs.next() ) {
          int size = rs.getInt(1);
          GlobalHelper.msg (String.format("no. of records present : %d",size));
          if ( 0 < size) {
            ids = new Integer[size];
          }
          if ( null != ids ) {
            rs = ps.executeQuery(getIdQuery());
            if ( null != rs ) {
              for ( int i = 0; rs.next (); i ++ ) {
                ids [ i ] = rs.getInt (1);
              }
            }
          }
        }
      }
      ps.close();
      con.close();
    } catch (SQLException se) {
      ids = null;
      GlobalHelper.msg(String.format("Problem while fetching all ids: %s", se));
    }
    return ids;
  }

  private QuestionAnswerVo getFilledQuestionAnswerVo(ResultSet rs) {
    QuestionAnswerVo vo = new QuestionAnswerVo();
    try {
      vo.setId(rs.getInt(TB_ID_CLM));
      vo.setQsId(rs.getInt(QSN_ID_CLM));
      vo.setQuestion(rs.getString(QSN_CLM));
      vo.setOption1(rs.getString(OPT1_CLM));
      vo.setOption2(rs.getString(OPT2_CLM));
      vo.setOption3(rs.getString(OPT3_CLM));
      vo.setOption4(rs.getString(OPT4_CLM));
      vo.setAnswer(rs.getInt(ASN_CLM));
    } catch (SQLException se) {
      GlobalHelper.msg(se);
      vo = null;
    }
    return vo;
  }
}
