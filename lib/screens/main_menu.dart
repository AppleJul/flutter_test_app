import 'package:flutter/material.dart';

import 'four_squares.dart';


class MyStatefulWidget extends StatefulWidget {

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _MainScreenButton(name: '4 квадрата',
            onTap: (){
             Navigator.push(
             context, MaterialPageRoute(builder: (context) => GridViewWidget()));},
          ),
          _MainScreenButton(name: 'Цветной список',
            onTap: (){},
          ),
          _MainScreenButton(name: 'Асинхронный запрос',
            onTap: (){},
          ),
          _MainScreenButton(name: 'Codelab',
            onTap: (){},
          ),

        ],
      ),
    );
  }
}

class _MainScreenButton extends StatelessWidget {
    _MainScreenButton({
    Key? key,
    required this.name,
    required this.onTap,
  }) : super(key: key);

    final String name;
    final void Function() onTap;

  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 50.0),
      margin:const EdgeInsets.only(bottom: 16.0),
      child: ElevatedButton(
        style: style,
        onPressed: onTap,
        child: Padding(
          padding: EdgeInsets.all(0),
          child:
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
