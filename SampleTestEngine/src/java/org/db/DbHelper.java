package org.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.helpers.GlobalHelper;

public class DbHelper {

  private String _dbPath;

  public DbHelper(String path) {
    _dbPath = path;
  }

  private String getConnectionString(String path) {
    StringBuilder buf = new StringBuilder();
    buf.append(DbConstants.JDBC_STR);
    buf.append(path);
    buf.append(DbConstants.DB_RELATIVE_PATH);
    return buf.toString();
  }

  public Connection getConnection() {
    Connection con = null;
    try {
      Class.forName(DbConstants.DRIVER_NAME);
    } catch (ClassNotFoundException ex) {
      GlobalHelper.msg(String.format("Problem with driver class!!: %s", ex));
      return con;
    }
    try {
      String str = getConnectionString(_dbPath);
      con = DriverManager.getConnection(str);
    } catch (SQLException ex) {
      try {
        if (null != con && !con.isClosed()) {
          con.close();
        }
      } catch (SQLException se) {
      }
      GlobalHelper.msg(String.format("Problem with connection: %s", ex));
      con = null;
    }
    return con;
  }
}
