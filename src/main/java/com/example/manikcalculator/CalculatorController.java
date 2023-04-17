package com.example.manikcalculator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalculatorController {
    
    @RequestMapping(value="/calculate", method=RequestMethod.GET)
    public ModelAndView calculate(@RequestParam("num1") String num1, @RequestParam("num2") String num2, @RequestParam("operation") String operation) {
        double result = 0.0;
        
        try {
            double n1 = Double.parseDouble(num1);
            double n2 = Double.parseDouble(num2);
            
            switch (operation) {
                case "add":
                    result = n1 + n2;
                    break;
                case "subtract":
                    result = n1 - n2;
                    break;
                case "multiply":
                    result = n1 * n2;
                    break;
                case "divide":
                    result = n1 / n2;
                    break;
                default:
                    throw new IllegalArgumentException("Invalid operation: " + operation);
            }
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid number format: " + e.getMessage());
        }
        
        ModelAndView modelAndView = new ModelAndView("result");
        modelAndView.addObject("num1", num1);
        modelAndView.addObject("num2", num2);
        modelAndView.addObject("operation", operation);
        modelAndView.addObject("result", result);
        
        return modelAndView;
    }
}
