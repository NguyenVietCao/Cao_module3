<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 30/05/2023
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table style="margin-left: 30% ;width: 50% ;background: whitesmoke ">
    <h1 STYLE="text-align: center">Danh Sach Khach Hang</h1>
    <tr style="height: 50px; text-align: left">
        <th>Stt</th>
        <th>Ten</th>
        <th>Ngay Sinh</th>
        <th>Dia chi</th>
        <th>Anh</th>
    </tr >
    <c:forEach var="c"  items="${customerList}" varStatus="look">
        <tr  style="height: 50px; text-align: left">
            <td>
                <c:out value="${look.count}"></c:out>
            </td>
            <td>
                <c:out value="${c.name}"></c:out>
            </td>
            <td>
                <c:out value="${c.dayOfBirth}"></c:out>
            </td>
            <td>
                <c:out value="${c.address}"></c:out>
            </td>
            <td>
                <c:out value="${c.images}"></c:out>
            </td>
        </tr>
    </c:forEach>


</table>
</body>
</html>
