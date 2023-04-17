<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>
    <h1>Calculator</h1>
    <form action="calculate" method="post">
        <input type="text" name="num1" placeholder="Enter number 1" /><br />
        <input type="text" name="num2" placeholder="Enter number 2" /><br />
        <input type="radio" name="operator" value="add" checked /> Add<br />
        <input type="radio" name="operator" value="subtract" /> Subtract<br />
        <input type="radio" name="operator" value="multiply" /> Multiply<br />
        <input type="radio" name="operator" value="divide" /> Divide<br />
        <input type="submit" value="Calculate" />
    </form>
</body>
</html>
