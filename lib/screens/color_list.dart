import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ColorListWidget extends StatefulWidget {
  @override
  State<ColorListWidget> createState() => _ColorListWidgetState();
}

class _ColorListWidgetState extends State<ColorListWidget> {
  final _items = List<String>.generate(1000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Цветной список"),
      ),
      body: ListView.separated(
        itemCount: 1000,
        itemBuilder: (context, idx) {
          return Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          );
        },
        separatorBuilder: (context, idx) {
          return Divider();
        },
      ),

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
