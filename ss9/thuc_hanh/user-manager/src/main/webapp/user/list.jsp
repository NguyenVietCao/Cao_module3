<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 01/06/2023
  Time: 06:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <form action="/UserServlet?action=search" method="post">
        <input type="hidden" name="userList">
        <input type="text" placeholder="Your country" id="search" name="country">
        <button type="submit" >Search</button>
    </form>

    <h2>
        <a href="/UserServlet?action=create">Add New User</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
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
    <form action="/UserServlet?action=sort" method="post">
        <input type="submit" value="Sort By Name" name="sort" id="sort">
    </form>
</div>
</body>
</html>
