<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manik Calculator</title>
    <style>
        input[type="number"] {
            padding: 5px;
            width: 150px;
        }
        button {
            padding: 5px 10px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h1>Manik Calculator</h1>
    <form method="post" action="/calculate">
        <label for="num1">Number 1:</label>
        <input type="number" id="num1" name="num1"><br><br>
        <label for="num2">Number 2:</label>
        <input type="number" id="num2" name="num2"><br><br>
        <button type="submit" name="operation" value="add">Add</button>
        <button type="submit" name="operation" value="subtract">Subtract</button>
        <button type="submit" name="operation" value="multiply">Multiply</button>
        <button type="submit" name="operation" value="divide">Divide</button>
    </form>
</body>
</html>
