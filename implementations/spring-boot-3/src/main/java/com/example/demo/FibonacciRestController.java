package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class FibonacciRestController {

    @GetMapping("/fibonacci/{number}")
    public List<Long> getFibonacciNumbers(@PathVariable("number") int number) {
        return this.generateFibonacci(number);
    }

    private List<Long> generateFibonacci(int number) {
        List<Long> fibonacciList = new ArrayList<>(number);
        long first = 0;
        long second = 1;

        for (int i = 0; i < number; i++) {
            fibonacciList.add(first);
            long sum = first + second;
            first = second;
            second = sum;
        }

        return fibonacciList;
    }

}
