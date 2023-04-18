package com.example.manikcalculator;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class CalculatorControllerTest {

    @Test
    void testAdd() {
        // Instantiate the CalculatorController or mock its dependencies
        CalculatorController controller = new CalculatorController();

        // Test input values
        int num1 = 3;
        int num2 = 5;

        // Call the add method
        int result = controller.add(num1, num2);

        // Check if the result is as expected
        assertEquals(8, result, "Addition of 3 and 5 should be 8");
    }

    // Similarly, create tests for other operations (subtract, multiply, divide)
}
