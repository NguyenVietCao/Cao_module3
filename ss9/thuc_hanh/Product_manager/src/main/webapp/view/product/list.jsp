<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 31/05/2023
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product Manager</h1>
<a href="/product?action=add">Add New Product</a> <br>
<table>
    <tr>
        <td>STT</td>
        <td>Product Name</td>
        <td>Product Price</td>
        <td>Product Description</td>
        <td>Producer</td>
    </tr>
    <c:forEach varStatus="status" var="product" items="${listProduct}">
        <tr>
            <td>${product.id}</td>
            <td>${product.productName}</td>
            <td>${product.productDescription}</td>
        </tr>

    </c:forEach>

</table>
</body>
</html>
