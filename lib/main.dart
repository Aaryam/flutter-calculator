import 'package:flutter/material.dart';
import 'dart:core';
import 'sizeconfig.dart';

// flutter commands n' stuff "source ~/.bash_profile"

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String totalNum;

class _MyHomePageState extends State<MyHomePage> {
  String output = "0";
  String _output = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = "";

  void clearCalc() {
    if (totalNum == null || totalNum == '0') {
      totalNum = '0';
    }
  }

  buttonPressed(String buttonText) {
    if (buttonText == "C") {
      setState(() {
        totalNum = '0';
        num1 = 0;
        num2 = 0;
        operand = "";
      });
    } else if (buttonText == "±") {
      setState(() {
        num1 = double.parse(totalNum);
        totalNum = '0';
        operand = "$buttonText";
      });
    } else if (buttonText == "%") {
      setState(() {
        num1 = double.parse(totalNum);
        totalNum = '0';
        operand = "$buttonText";
      });
    } else if (buttonText == "÷") {
      setState(() {
        num1 = double.parse(totalNum);
        totalNum = '0';
        operand = "$buttonText";
      });
    } else if (buttonText == "×") {
      setState(() {
        num1 = double.parse(totalNum);
        totalNum = '0';
        operand = "$buttonText";
      });
    } else if (buttonText == "-") {
      setState(() {
        num1 = double.parse(totalNum);
        totalNum = '0';
        operand = "$buttonText";
      });
    } else if (buttonText == "+") {
      setState(() {
        num1 = double.parse(totalNum);
        totalNum = '0';
        operand = "$buttonText";
      });
    } else if (buttonText == "=") {
      if (operand == "×") {
        setState(() {
          totalNum = (num1 * double.parse(totalNum)).toString();
        });
      }
    } else {
      setState(() {
        clearCalc();
        if (totalNum != '0') {
          totalNum = totalNum + buttonText;
        } else {
          totalNum = '';
          totalNum = buttonText;
        }
      });
    }
  }

  Widget calculateButton(
      String buttonTxt, double height, double width, final bgColor) {
    return new Align(
      alignment: Alignment.centerLeft,
      child: Container(
          height: SizeConfig.heightSize / 9 * height,
          width: SizeConfig.widthSize / 4.2 * width,
          child: FlatButton(
            color: bgColor,
            onPressed: () => buttonPressed(buttonTxt),
            child: Text(
              "$buttonTxt",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.white30,
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 200,
                        width: 414,
                        color: Colors.redAccent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 350,
                              child: Text("$totalNum",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50 -
                                        (double.parse((_output.length + 2)
                                            .toStringAsFixed(0))),
                                  )),
                            )
                          ],
                        ))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 0.05,
                        width: 414,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("C", 120, 97, Colors.red),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("±", 120, 97, Colors.red),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("%", 120, 97, Colors.red),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("÷", 120, 97, Colors.red),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("7", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("8", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("9", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("×", 120, 97, Colors.red),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("4", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("5", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("6", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("-", 120, 97, Colors.red),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("1", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("2", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("3", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("+", 120, 97, Colors.red),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("0", 120, 200, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton(".", 120, 97, Colors.redAccent),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        calculateButton("=", 120, 97, Colors.red),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
