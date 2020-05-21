import 'package:flutter/material.dart';
import './home_page.dart';

class DetailPage extends StatelessWidget {
  final Detail detail;

  DetailPage(this.detail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detail.text),
      ),
      body: Image.asset(
        "assets/img/${detail.image}",
        fit: BoxFit.cover,
      ),
    );
  }
}
