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
<form action="/ProductServlet?action=create" method="post" align = "center">
    <table border="1" cellpadding="5" align="center">
        <tr>
         <h3>Create New Product</h3>
        </tr>
        <tr>
            <td>  <label for="productName">Name</label></td>
            <td>  <input type="text" id="productName" name="productName"></td>
        </tr>
        <tr>
            <td> <label for="productPrice">Price</label></td>
            <td>  <input type="text" id="productPrice" name="productPrice"></td>
        </tr>
        <tr>
            <td>   <label for="productDescription">Description</label></td>
            <td>  <input type="text" id="productDescription" name="productDescription"></td>
        </tr>
        <tr>
            <td> <label for="productImage">Image</label></td>
            <td> <input type="text" id="productImage" name="productImage"></td>
        </tr>
    </table>

    <input type="submit" value="Submit">

</form>
</body>
</html>
