import 'package:calculator/app/modules/home/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Calculator"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) {
                return Container(
                  alignment: Alignment.bottomRight,
                  child: Text(controller.expression, style: TextStyle(fontSize: 20, color: Colors.black45),),
                  padding: EdgeInsets.only(top: 25, bottom: 25, right: 50),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button('C', controller),
                Button('(', controller),
                Button(')', controller),
                Button('<=', controller),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button('7', controller),
                Button('8', controller),
                Button('9', controller),
                Button('/', controller),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button('4', controller),
                Button('5', controller),
                Button('6', controller),
                Button('*', controller),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button('1', controller),
                Button('2', controller),
                Button('3', controller),
                Button('-', controller),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button('.', controller),
                Button('0', controller),
                Button('=', controller),
                Button('+', controller),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
