<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 06/06/2023
  Time: 09:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/ProductServlet?action=edit" method="post" align = "center">
    <table border="1" cellpadding="5" align="center">
        <tr><h3 align="center">Edit Product</h3></tr>
        <tr>
            <td><label for="id">Id  :</label></td>
            <td> <input type="text" id="id" value="${product.productID}" readonly name="id"></td>
        </tr>
        <tr>
            <td> <label for="productName">Name</label></td>
            <td><input type="text" id="productName" name="productName" value="${product.productName}"></td>
        </tr>
       <tr>
           <td>  <label for="productPrice">Price</label></td>
           <td>  <input type="text" id="productPrice" name="productPrice" value="${product.productPrice}"></td>
       </tr>

        <tr>
            <td> <label for="productDescription">Description</label></td>
            <td> <input type="text" id="productDescription" name="productDescription" value="${product.productDescription}"></td>
        </tr>

        <br>
        <tr>
            <td>  <label for="productImage">Image</label></td>
            <td> <input type="text" id="productImage" name="productImage" value="${product.productImage}"></td>
        </tr>

    </table>

    <input type="submit" value="Submit" align="center">

</form>
</body>
</html>
