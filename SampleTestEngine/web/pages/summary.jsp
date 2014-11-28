<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@page import="org.helpers.GlobalHelper"%>
<%@page import="org.helpers.SessionHelper"%>
<%@page import="org.models.QuestionAnswerModel"%>

<!DOCTYPE html>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Summary Page</title>
    <link rel="stylesheet" href="css/custom.css">
  </head>
  <body>
    <center>
      <div class="main-container">
        <div class="page-header">
          <label class="note-label">Candidate: </label>
          <label class="text-label">
            <%=SessionHelper.getUserName(session)%>
          </label>
        </div>
        <div class="page-body">
          <form action="goTo" method="post">
            <center>
              <div class="info-div">
                <span class="attempted"></span>Attempted Questions
              </div>
              <div class="info-div">
                <span class="not-attempted"></span>Not Attempted Questions
              </div>
              <table width="100%" cellpadding="5" cellspacing="5">
                <%=QuestionAnswerModel.getSummaryHtml(session)%>
              </table>
            </center>
          </form>
        </div>
        <div class="page-footer" style="text-align:center;">
          <form action="update" method="post">
            <input type="submit" name="navigate" value="End Exam" class="no-button">
          </form>
        </div>
      </div>
    </center>
  </body>
</html>