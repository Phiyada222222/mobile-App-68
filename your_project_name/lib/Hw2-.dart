import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator UI',
      home: const CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  Widget buildButton(String text, {Color color = Colors.grey}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(vertical: 22),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // จอแสดงผล
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(24),
                child: const Text(
                  "0",
                  style: TextStyle(fontSize: 64, color: Colors.white),
                ),
              ),
            ),

            // แถวของปุ่ม
            Column(
              children: [
                Row(
                  children: [
                    buildButton("C", color: Colors.redAccent),
                    buildButton("%", color: Colors.blueGrey),
                    buildButton("/", color: Colors.blueGrey),
                    buildButton("*", color: Colors.blueGrey),
                  ],
                ),
                Row(
                  children: [
                    buildButton("7"),
                    buildButton("8"),
                    buildButton("9"),
                    buildButton("-", color: Colors.blueGrey),
                  ],
                ),
                Row(
                  children: [
                    buildButton("4"),
                    buildButton("5"),
                    buildButton("6"),
                    buildButton("+", color: Colors.blueGrey),
                  ],
                ),
                Row(
                  children: [
                    buildButton("1"),
                    buildButton("2"),
                    buildButton("3"),
                    buildButton("=", color: Colors.orange),
                  ],
                ),
                Row(
                  children: [
                    buildButton("0"),
                    buildButton(".", color: Colors.blueGrey),
                    buildButton("C", color: Colors.redAccent),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
