package com.example.manikcalculator;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculatorController {

    @PostMapping("/calculate")
    public String calculate(@RequestParam("num1") double num1,
                             @RequestParam("num2") double num2,
                             @RequestParam("operation") String operation,
                             Model model) {

        double result = 0.0;

        switch (operation) {
            case "add":
                result = num1 + num2;
                break;
            case "subtract":
                result = num1 - num2;
                break;
            case "multiply":
                result = num1 * num2;
                break;
            case "divide":
                result = num1 / num2;
                break;
            default:
                model.addAttribute("error", "Invalid operation selected");
                return "error";
        }

        model.addAttribute("num1", num1);
        model.addAttribute("num2", num2);
        model.addAttribute("result", result);
        model.addAttribute("operation", operation);
        return "result";
    }
}
