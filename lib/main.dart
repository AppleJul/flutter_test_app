import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Главная';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

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
          Container(
            constraints: const BoxConstraints(minHeight: 50.0),
            margin:const EdgeInsets.only(bottom: 16.0),
            child: ElevatedButton(
              style: style,
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(0),
                child:
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '4 квадрата',
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
          ),
          Container(
            constraints: const BoxConstraints(minHeight: 50.0),
            margin:const EdgeInsets.only(bottom: 16.0),
            child: ElevatedButton(
              style: style,
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(0),
                child:
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Цветной список',
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
          ),
          Container(
            constraints: const BoxConstraints(minHeight: 50.0),
            margin:const EdgeInsets.only(bottom: 16.0),
            child: ElevatedButton(
              style: style,
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(0),
                child:
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Codelab',
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
          ),
          Container(
            constraints: const BoxConstraints(minHeight: 50.0),
            margin:const EdgeInsets.only(bottom: 16.0),
            child: ElevatedButton(
              style: style,
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(0),
                child:
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Асинхронный запрос',
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
          ),

        ],
      ),
    );
  }
}
