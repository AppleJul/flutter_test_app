import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4 квадрата"),
      ),
      body: GridView.count(crossAxisCount: 2,
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      children: <Widget>[
        Container(
          color: Colors.grey
        ),
        Container(
            color: Colors.grey
        ),
        Container(
            color: Colors.grey
        ),
        Container(
            color: Colors.grey
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.brush),
      ),
    );
  }
}






