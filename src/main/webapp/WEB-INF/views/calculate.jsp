<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>
    <form method="post" action="/manik-calculator/calculate">
        <label for="number1">Number 1:</label>
        <input type="text" name="number1" id="number1"><br><br>
        <label for="number2">Number 2:</label>
        <input type="text" name="number2" id="number2"><br><br>
        <input type="submit" value="Calculate">
    </form>
</body>
</html>
