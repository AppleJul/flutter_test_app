import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test_app/screens/main_menu.dart';
import 'package:flutter_test_app/screens/four_squares.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static const String _title = 'Главная';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}
