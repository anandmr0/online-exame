<%@page contentType="text/html" pageEncoding="UTF-8" import="org.helpers.GlobalHelper"%>
<%@page import="org.helpers.SessionHelper"%>
<%@page import="org.models.QuestionAnswerModel"%>
<!DOCTYPE html>

<%
    String path = getServletContext().getRealPath("/");
%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Exam Page</title>
    <link rel="stylesheet" href="css/custom.css">
  </head>
  <body>
    <center>
      <div class="main-container">
        <form action="update" method="post">
          <div class="page-header">
            <table width="100%">
              <tr>
                <td align="left">
                  <label class="note-label">Candidate: </label>
                  <label class="text-label">
                    <%=SessionHelper.getUserName(session)%>
                  </label>
                </td>
                <td align="justify">
                  <label class="note-label">Question Id: </label>
                  <label class="text-label">
                    <%=QuestionAnswerModel.getQuestionId(session)%>
                  </label>
                </td>
                <td align="center">
                  <label class="note-label">Question: </label>
                  <label class="text-label">
                    <%=QuestionAnswerModel.getPaginationHtml(session)%>
                  </label>
                </td>
              </tr>
            </table>
          </div>
          <div class="page-body">
            <div class="qsn-div">
              <label class="note-label">Question :</label><br>
              <label class="text-label">
                <%=QuestionAnswerModel.getQuestionHtml(session)%>
              </label>
            </div>
            <div class="ans-div">
              <label class="note-label">Option :</label><br>
              <span class="text-label">
                <%=QuestionAnswerModel.getOptionsRadioHtml(session)%>
              </span>
            </div>
          </div>
          <div class="page-footer">
            <table width="100%">
              <tr>
                <td align="left">
                  <input type="submit" name="navigate" value="Next >>" class="ok-button">
                </td>
                <td align="center">
                  <input type="submit" name="navigate" value="<< Previous" class="ok-button">
                </td>
                <td align="center">
                  <input type="submit" name="navigate" value="Summary" class="ok-button">
                </td>
                <td align="right">
                  <input type="submit" name="navigate" value="End Exam" class="no-button">
                </td>
              </tr>
            </table>
          </div>
        </form>
      </div>
    </center>
  </body>
</html>