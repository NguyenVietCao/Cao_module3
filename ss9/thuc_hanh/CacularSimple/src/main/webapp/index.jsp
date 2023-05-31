<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h2>Simple Calculator</h2>
<form action="/CalculatorServlet" method="post" style="height: 40%;width: 50% ; text-align: center;background: whitesmoke;margin-left: 20px;padding-left: 10px " >
   <label for="operand">First operand</label>
    <input type="text" name="operand" id="operand" placeholder="First operand">
    <br>
    <label for="operator">Operator</label>
    <select name="operator" id="operator">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
    <br>
    <label for="secondOperand">Second Operand</label>
    <input type="text" id="secondOperand" name="secondOperand">
    <br>
    <button type="submit">Calculate</button>
</form>

</body>
</html>