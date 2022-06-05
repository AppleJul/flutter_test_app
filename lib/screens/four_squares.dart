import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridViewWidget extends StatefulWidget {
  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4 квадрата"),
      ),
      body: GridView.count(crossAxisCount: 2,
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0, mainAxisSpacing: 10.0,
          children: <Widget>[
            _ChangeColor(),
            _ChangeColor(),
            _ChangeColor(),
            _ChangeColor(),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.brush),
      ),
    );
  }
}

class _ChangeColor extends StatelessWidget {
  _ChangeColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
    );
  }
}
