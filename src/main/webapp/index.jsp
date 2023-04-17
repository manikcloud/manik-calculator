<!DOCTYPE html>
<html>
    <head>
        <title>Manik Calculator</title>
    </head>
    <body>
        <form method="get" action="calculate">
            <label for="num1">Enter first number:</label>
            <input type="text" id="num1" name="num1"><br><br>

            <label for="num2">Enter second number:</label>
            <input type="text" id="num2" name="num2"><br><br>

            <label for="operation">Select operation:</label>
            <select id="operation" name="operation">
                <option value="add">Add</option>
                <option value="subtract">Subtract</option>
                <option value="multiply">Multiply</option>
                <option value="divide">Divide</option>
            </select><br><br>

            <button type="submit">Calculate</button>
        </form>
    </body>
</html>
