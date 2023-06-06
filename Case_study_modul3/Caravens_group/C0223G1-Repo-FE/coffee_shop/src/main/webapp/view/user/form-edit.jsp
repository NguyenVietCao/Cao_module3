<%--
  Created by IntelliJ IDEA.
  User: TechCare
  Date: 6/4/2023
  Time: 8:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="/navbar-admin.jsp"></c:import>
<div class="container">
    <form style="color: white; margin-top: 10em" action="/User?action=edit" method="post">
        <table style="color: white;">
            <tr>
                <td> <label>id: </label></td>
                <td> <input style="border-radius: 10px" name="id" value="${user.id}" readonly></td>
            </tr>
            <tr>
                <td> <label>User name: </label></td>
                <td><input style="border-radius: 10px" name="userName" value="${user.userName}"/></td>
            </tr>
            <tr>
                <td><label>Password: </label></td>
                <td><input style="border-radius: 10px" name="password" value="${user.userPassword}"/></td>
            </tr>
            <tr>
                <td><label>Email: </label></td>
                <td><input style="border-radius: 10px" name="email" value="${user.userEmail}"/></td>
            </tr>
            <tr>
                <td><label>Phone number: </label></td>
                <td><input style="border-radius: 10px" name="phoneNumber" value="${user.userPhoneNumber}"/></td>
            </tr>
            <tr>
                <td><label>Type User: </label></td>
                <td>
                    <select style="border-radius: 10px" name="typeUser">
                        <c:forEach var="typeUser" items="${listTypeUser}" varStatus="loop">
                            <option  value="${typeUser.id}"> ${typeUser.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td><button style="border-radius: 15px" class="btn btn-primary w-100" type="submit">Edit</button></td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>
