import 'package:flutter/material.dart';

class CalculatorController {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  final operationController = TextEditingController();
  double result = 0;


  void Calaulate() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    String op = operationController.text;

    switch (op) {
      case "+":
        result = num1 + num2;
        break;
      case "-":
        result = num1 - num2;
        break;
      case "/":
        result = num1 / num2;
        break;

      case "*":
        result = num1 * num2;
        break;

      case "%":
        result = num1 % num2;
        break;
      default:
        result = -1;
    }
    print(result);
  }


  String getResult() {
   return result == -1 ? "Invalid operation" : "Result=$result";
  }

}