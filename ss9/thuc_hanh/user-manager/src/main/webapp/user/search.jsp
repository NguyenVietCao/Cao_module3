<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 01/06/2023
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" cellpadding="5">
  <caption><h2>List of Users</h2></caption>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Country</th>
    <th>Actions</th>
  </tr>
  <c:forEach var="user" items="${userList}">
    <tr>
      <td><c:out value="${user.id}"/></td>
      <td><c:out value="${user.name}"/></td>
      <td><c:out value="${user.email}"/></td>
      <td><c:out value="${user.country}"/></td>
      <td>
        <a href="/UserServlet?action=edit&id=${user.id}">Edit</a>
        <a href="/UserServlet?action=delete&id=${user.id}">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
