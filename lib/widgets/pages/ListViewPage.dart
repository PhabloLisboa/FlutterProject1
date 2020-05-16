import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            _img(),
            _img(),
            _img(),
            _img(),
          ],
        ),
      ),
    );
  }

  _img() {
    return Image.asset(
      "assets/img/teste.jpg",
      fit: BoxFit.cover,
    );
  }
}
