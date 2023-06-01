<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 01/06/2023
  Time: 06:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/UserServlet?action=create" method="post">
<%--    protected int id;--%>
<%--    protected String name;--%>
<%--    protected String email;--%>
<%--    protected String country;--%>
    <label for="studentId">Id:</label>
    <input type="text" id="studentId" name="studentId">
    <br>
    <br>
    <label for="studentName">Name</label>
    <input type="text" id="studentName" name="name">
    <br>
    <br>
    <label for="studentEmail">Email</label>
    <input type="text" id="studentEmail" name="email">
    <br>
    <br>
    <label for="studentCountry">Country</label>
    <input type="text" id="studentCountry" name="country">
    <br>
    <br>
    <input type="submit" value="ADD">

</form>

</body>
</html>
