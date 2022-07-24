// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, avoid_unnecessary_containers

import 'package:calculator/Widgets/CalcButton.dart';
import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff22252d),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: _height * 0.62,
              width: _width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                color: Color(0xff292d36),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalcButton(
                        text: 'AC',
                        textcolor: Color.fromARGB(255, 32, 215, 188),
                      ),
                      CalcButton(
                        text: '( )',
                        textcolor: Color.fromARGB(255, 32, 215, 188),
                      ),
                      CalcButton(
                        text: '%',
                        textcolor: Color.fromARGB(255, 32, 215, 188),
                      ),
                      CalcButton(
                          text: '/',
                          textcolor: Color.fromARGB(255, 234, 70, 81)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalcButton(
                        text: '7',
                      ),
                      CalcButton(
                        text: '8',
                      ),
                      CalcButton(
                        text: '9',
                      ),
                      CalcButton(
                          text: 'X',
                          textcolor: Color.fromARGB(255, 234, 70, 81)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalcButton(
                        text: '4',
                      ),
                      CalcButton(
                        text: '5',
                      ),
                      CalcButton(
                        text: '6',
                      ),
                      CalcButton(
                          text: '-',
                          textcolor: Color.fromARGB(255, 234, 70, 81)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalcButton(
                        text: '1',
                      ),
                      CalcButton(
                        text: '2',
                      ),
                      CalcButton(
                        text: '3',
                      ),
                      CalcButton(
                          text: '+',
                          textcolor: Color.fromARGB(255, 234, 70, 81)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          text: '0',
                        ),
                        CalcButton(
                          text: '0',
                        ),
                        CalcButton(
                          text: '.',
                        ),
                        CalcButton(
                            text: '=',
                            textcolor: Color.fromARGB(255, 234, 70, 81)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
