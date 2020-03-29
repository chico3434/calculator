import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';

import '../home_controller.dart';

class Button extends FlatButton {
  String value;
  Widget child;
  HomeController controller;
  EdgeInsetsGeometry padding;
  RoundedRectangleBorder shape;

  Button(this.value, this.controller) {
    if(value == '<='){
      child = Icon(Icons.backspace);
    } else if (value == '-') {
      child = Icon(Icons.remove);
    } else if (value == '+') {
      child = Icon(Icons.add);
    } else if (value == '*') {
      child = Icon(Icons.close);
    } else if (value == '/' || value == '=') {
      child = Text(value, style: TextStyle(color: Colors.black87, fontSize: 23),);
    } else {
      child = Text(value, style: TextStyle(fontSize: 20, color: Colors.black54),);
    }
    padding = EdgeInsets.all(30);
    shape = RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(100),
    );
  }

  @override
  get onPressed => () {
        if (value == '=') {
          Expression expression = Expression.parse(controller.expression);
          final evulator = const ExpressionEvaluator();
          var result = evulator.eval(expression, {});
          controller.setResult(result.toString());
        } else if (value == 'C') {
          controller.clean();
        } else if (value == '<=') {
          controller.removeOne();
        } else {
          controller.append(value);
        }
      };
}
