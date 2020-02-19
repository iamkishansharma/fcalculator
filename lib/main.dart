import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "FCalculator",
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: CalculatorPage());
  }
}

String result = "0";

class CalculatorPage extends StatefulWidget {
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("FCalculator")),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 3,
              child: Container(
                alignment: Alignment.centerRight,
                height: double.infinity,
                width: double.infinity,
                child: Text(
                  result,
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white, fontSize: 50.0),
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                  color: Colors.black54,
                  height: double.infinity,
                  width: double.infinity,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("C")),
                              Flexible(flex: 1, child: CustomButton("+/-")),
                              Flexible(flex: 1, child: CustomButton("%")),
                              Flexible(
                                  flex: 1, child: OperatorButton("\u00F7")),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("7")),
                              Flexible(flex: 1, child: CustomButton("8")),
                              Flexible(flex: 1, child: CustomButton("9")),
                              Flexible(flex: 1, child: OperatorButton("X")),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("4")),
                              Flexible(flex: 1, child: CustomButton("5")),
                              Flexible(flex: 1, child: CustomButton("6")),
                              Flexible(flex: 1, child: OperatorButton("-")),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("1")),
                              Flexible(flex: 1, child: CustomButton("2")),
                              Flexible(flex: 1, child: CustomButton("3")),
                              Flexible(flex: 1, child: OperatorButton("+")),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("0")),
                              Flexible(flex: 1, child: CustomButton(".")),
                              Flexible(flex: 2, child: OperatorButton("=")),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
          color: Colors.red),
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 25.0),
      ),
    );
  }
}

// ignore: must_be_immutable
class OperatorButton extends StatelessWidget {
  String text;

  OperatorButton(this.text);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
          color: Colors.blue),
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 25.0),
      ),
    );
  }
}
