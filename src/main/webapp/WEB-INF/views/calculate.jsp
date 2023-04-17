<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manik Calculator</title>
<style>
  body {
    font-family: Arial, sans-serif;
  }
  .container {
    margin: 50px auto;
    width: 500px;
    text-align: center;
  }
  input[type=number] {
    width: 200px;
    padding: 5px;
    margin: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-size: 18px;
  }
  button {
    width: 150px;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
    margin: 10px;
  }
  button:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
  <div class="container">
    <h1>Manik Calculator</h1>
    <form action="calculate" method="post">
      <label for="number1">Number 1:</label><br>
      <input type="number" id="number1" name="number1" required><br>
      <label for="number2">Number 2:</label><br>
      <input type="number" id="number2" name="number2" required><br><br>
      <button type="submit" name="operation" value="add">Add</button>
      <button type="submit" name="operation" value="subtract">Subtract</button>
      <button type="submit" name="operation" value="multiply">Multiply</button>
      <button type="submit" name="operation" value="divide">Divide</button>
    </form>
  </div>
</body>
</html>
