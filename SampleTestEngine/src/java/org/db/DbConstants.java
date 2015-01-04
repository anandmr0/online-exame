package org.db;

import org.helpers.GlobalHelper;

public interface DbConstants {

  String DRIVER_NAME = "sun.jdbc.odbc.JdbcOdbcDriver";
  String JDBC_STR = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
  String DB_RELATIVE_PATH = "WEB-INF".concat(GlobalHelper.FILE_SEPARATOR
          .concat("db")).concat(GlobalHelper.FILE_SEPARATOR
          .concat("question_bank.MDB"));

  int EMPTY_ID = -1;
  int RESULT_SIZE = 7;
  int UNKWON_OPTION = 0;
}
