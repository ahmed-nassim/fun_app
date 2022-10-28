import 'package:flutter/material.dart';
import 'package:fun_app/calculator/controller.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
   final Controller = CalculatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text(" Calculator"),
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller:Controller.num1Controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter Number 1"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: Controller.operationController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter Operation"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller:Controller.num2Controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter Number 2"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Controller.Calaulate();

                 setState(() {});

              },
              child: const Text("Caculate")),
          Text(Controller.getResult()),
        ],
      ),
    );
  }
}
