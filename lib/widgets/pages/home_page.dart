import 'package:flutter/material.dart';
import 'package:teste/widgets/pages/page1.dart';
import 'package:teste/widgets/pages/page2.dart';
import 'package:teste/widgets/pages/page3.dart';
import 'package:teste/widgets/pages/ListViewPage.dart';
import '../commons/button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App"),
          centerTitle: true,
        ),
        body: _body(context));
  }
}

_body(context) {
  return Container(
      color: Colors.redAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          Container(
              height: 300,
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: PageView(
                children: <Widget>[
                  _img(),
                  _img(),
                  _img(),
                  _img(),
                ],
              )),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                      "List View", () => _navigation(context, ListViewPage())),
                  Button("Page 15", () => _navigation(context, Page1())),
                  Button("Page 2", () => _navigation(context, Page2())),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button("Snack", _onPrint),
                  Button("Dialog", _onPrint),
                  Button("Toast", _onPrint),
                ],
              ),
            ],
          ),
        ],
      ));
}

_onPrint() {
  return print("Teste");
}

_navigation(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

_text() {
  return Text(
    "Primeiro App em fluutter!",
    style: TextStyle(color: Colors.white),
  );
}

_img() {
  return Image.asset(
    "assets/img/teste.jpg",
    fit: BoxFit.cover,
  );
}
