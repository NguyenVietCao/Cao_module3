<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--Product Description: Mô tả của sản phẩm--%>
<%--List Price: Giá niêm yết của sản phẩm--%>
<%--Discount Percent: Tỷ lệ chiết khấu (phần trăm)--%>
<form action="/Servlet" method="post">
    <lable>Product Description</lable>
    <input type="text" name="pd" placeholder="Product Description">
    <br>
    <label>List Price</label>
    <input type="text" name="lp" placeholder="List Price">
    <br>
    <label>Discount Percent</label>
    <input type="text" name="dp" placeholder="Discount Percent">
    <br>
    <button type="submit">Calculate Discount</button>
</form>
</body>
</html>