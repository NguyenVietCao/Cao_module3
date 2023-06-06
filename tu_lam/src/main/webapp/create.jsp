<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 05/06/2023
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/ProductServlet?action=create" method="post">

    <label for="productName">Name</label>
    <input type="text" id="productName" name="productName">
    <br>
    <label for="productPrice">Price</label>
    <input type="text" id="productPrice" name="productPrice">

    <br>
    <label for="productDescription">Description</label>
    <input type="text" id="productDescription" name="productDescription">
    <br>
    <label for="productImage">Image</label>
    <input type="text" id="productImage" name="productImage">

    <input type="submit" value="Submit">

</form>
</body>
</html>
