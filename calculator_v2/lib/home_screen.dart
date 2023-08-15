import 'package:calculator_v2/constraint.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

// ignore: camel_case_types
class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

// ignore: camel_case_types
class _Home_screenState extends State<Home_screen> {
  var userinput = '0';
  var result = '';
  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    void equalpress() {
      String replaceval = userinput.replaceAll('÷', '/');
      String replaceval2 = replaceval.replaceAll('×', '*');

      Parser p = Parser();
      Expression expression = p.parse(replaceval2);
      ContextModel contextModel = ContextModel();

      double eval = expression.evaluate(EvaluationType.REAL, contextModel);
      result = eval.toString();
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      userinput.toString(),
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  Text(
                    result.toString(),
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            thickness: .5,
            color: Colors.white,
          ),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      big_button(
                          name: 'AC',
                          onPressed: () {
                            userinput = '';
                            result = '';
                            setState(() {});
                          }),
                      big_button(
                          name: '+/-',
                          onPressed: () {
                            userinput += '+/-';
                            setState(() {});
                          }),
                      big_button(
                          name: '%',
                          onPressed: () {
                            userinput += '%';
                            setState(() {});
                          }),
                      big_button(
                        name: '÷',
                        onPressed: () {
                          userinput += '÷';
                          setState(() {});
                        },
                        color: const Color(0xffff8f00),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      big_button(
                          name: '7',
                          onPressed: () {
                            userinput += '7';
                            setState(() {});
                          }),
                      big_button(
                          name: '8',
                          onPressed: () {
                            userinput += '8';
                            setState(() {});
                          }),
                      big_button(
                          name: '9',
                          onPressed: () {
                            userinput += '9';
                            setState(() {});
                          }),
                      big_button(
                        name: '×',
                        onPressed: () {
                          userinput += '×';
                          setState(() {});
                        },
                        color: const Color(0xffff8f00),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      big_button(
                          name: '4',
                          onPressed: () {
                            userinput += '4';
                            setState(() {});
                          }),
                      big_button(
                          name: '5',
                          onPressed: () {
                            userinput += '5';
                            setState(() {});
                          }),
                      big_button(
                          name: '6',
                          onPressed: () {
                            userinput += '6';
                            setState(() {});
                          }),
                      big_button(
                        name: '-',
                        onPressed: () {
                          userinput += '-';
                          setState(() {});
                        },
                        color: const Color(0xffff8f00),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      big_button(
                          name: '1',
                          onPressed: () {
                            userinput += '1';
                            setState(() {});
                          }),
                      big_button(
                          name: '2',
                          onPressed: () {
                            userinput += '2';
                            setState(() {});
                          }),
                      big_button(
                          name: '3',
                          onPressed: () {
                            userinput += '3';
                            setState(() {});
                          }),
                      big_button(
                        name: '+',
                        onPressed: () {
                          userinput += '+';
                          setState(() {});
                        },
                        color: const Color(0xffff8f00),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      big_button(
                          name: '0',
                          onPressed: () {
                            userinput += '0';
                            setState(() {});
                          }),
                      big_button(
                          name: 'DEL',
                          onPressed: () {
                            userinput =
                                userinput.substring(0, userinput.length - 1);
                            setState(() {});
                          }),
                      big_button(
                          name: '.',
                          onPressed: () {
                            userinput += '.';
                            setState(() {});
                          }),
                      big_button(
                        name: '=',
                        onPressed: () {
                          equalpress();
                          setState(() {});
                        },
                        color: const Color(0xffff8f00),
                      ),
                    ],
                  )
                ]),
          ),
        ],
      )),
    );
  }
}
