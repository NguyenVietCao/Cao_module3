<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 31/05/2023
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/product?action=add" method="post" >
<%--    //    id, tên sản phẩm, giá sản phẩm, mô tả của sản phẩm, nhà sản xuất.--%>
    <h1>Add New Product</h1>

    <label for="ProductId"></label>
    <input type="text " id="ProductId" name="id"><br>

    <label for="ProductName">Product Name</label>
    <input type="text " id="ProductName" name="name"><br>

    <label for="ProductPrice">Product Price</label>
    <input type="text " id="ProductPrice" name="price"><br>

    <label for="ProductDescription">Product Description</label>
    <input type="text " id="ProductDescription" name="des"><br>

    <label for="Producer">Producer</label>
    <input type="text " id="Producer" name="producer"><br>

    <input type="submit" value="add">

</form>
</body>
</html>
