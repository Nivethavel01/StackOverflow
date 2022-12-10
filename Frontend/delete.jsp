<%response.sendRedirect("Answer.jsp");%>
<%=request.getParameter("id") %>
String sql = "DELETE FROM person WHERE personID="+personID;
%>
<jsp:forward page="/success.jsp"/>
<% 
%>
<jsp:forward page="/failure.jsp"/>
<%
"DELETE Questions , Answers  FROM Questions  INNER JOIN Answers  WHERE Questions.id= Answers.id and Questions.id ="+id
