<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 05/06/2023
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>Product List</h1>
    <a href="/ProductServlet?action=create">Add New Product</a>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <tr>
            <td>STT</td>
            <td>Product Name</td>
            <td>Product Price</td>
            <td>Product Description</td>
            <td>Product Image</td>
            <td>Action</td>
        </tr>
        <c:forEach items="${productList}" var="product" varStatus="look">
            <tr>
                <td>${look.count}</td>
                <td>${product.productName}</td>
                <td>${product.productPrice}</td>
                <td>${product.productDescription}</td>
                <td>${product.productImage}</td>
                <td>
                    <a href="/ProductServlet?action=edit&id=${product.productID}">Edit</a>
                    <a href="/ProductServlet?action=delete&id=${product.productID}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table
</div>


</body>
</html>
