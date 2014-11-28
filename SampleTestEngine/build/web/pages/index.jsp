<%@page contentType="text/html" pageEncoding="UTF-8" import="org.helpers.GlobalHelper"%>

<!DOCTYPE html>

<%
    String path = getServletContext().getRealPath("/");
%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Start Page</title>
    <link rel="stylesheet" href="css/custom.css">
  </head>
  <body>
    <center>
      <div class="main-container">
        <div id="login-div">
          <form action="doBeforeTest" method="post">
            <table cellpadding="5">
              <tr>
                <td>
                  <label class="text-label">User name</label>
                </td>
                <td>
                  <input type="text" name="userNameTxt" class="text-box"/>
                </td>
                <td>
                  <label class="error-label"><%=getUserNameErrorMessage(request)%></label>
                </td>
              </tr>
              <tr>
                <td>
                  <label class="text-label">Subject</label>
                </td>
                <td>
                  <select name="subjectBox" class="text-box">
                    <option value="select">-- Select --</option>
                    <%=new org.models.QuestionBankModel(path).getSubjectOptionsHtml()%>
                  </select>
                </td>
                <td>
                  <label class="error-label"><%=getSubjectErrorMessage(request)%></label>
                </td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>
                  <input type="submit" class="ok-button" value="Start Test"/>
                </td>
                <td>&nbsp;</td>
              </tr>
            </table>
          </form>
        </div>
      </div>
    </center>
  </body>
</html>
<%!
  private String getSubjectErrorMessage(HttpServletRequest request) {
    return getErrorMessageAt(request, 1);
  }

  private String getUserNameErrorMessage(HttpServletRequest request) {
    return getErrorMessageAt(request, 0);
  }

  private String getErrorMessageAt(HttpServletRequest request, int ind) {
    Object[] temp = (Object[]) request.getAttribute("error.msg");
    if (GlobalHelper.isValidObject(temp)) {
      if (temp instanceof String[]) {
        String[] msg = (String[]) temp;
        if (GlobalHelper.isValidObject(msg) && GlobalHelper.isValidString(msg[ind])) {
          return msg[ind];
        }
        return "";
      }
      return "";
    }
    return "";
  }
%>