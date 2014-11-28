<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@page import="org.helpers.GlobalHelper"%>
<%@page import="org.helpers.SessionHelper"%>
<%@page import="org.models.QuestionAnswerModel"%>

<!DOCTYPE html>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Result Page</title>
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

              </div>
              <table width="100%" cellpadding="5" cellspacing="5">
                <%=QuestionAnswerModel.getResultHtml(session)%>
              </table>
            </center>
          </form>
        </div>
        <div class="page-footer" style="text-align:center;">
          <form action="doBeforeTest" method="post">
            <input type="submit" value="Re-Attempt"
                   name="navigate" class="ok-button">
          </form>
        </div>
      </div>
    </center>
  </body>
</html>
<%SessionHelper.destroySession(session);%>