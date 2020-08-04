import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(contex) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[700],
        appBar: AppBar(
            title: Text(
              'Dice',
              style: TextStyle(fontSize: 25.0),
            ),
            centerTitle: true,
            backgroundColor: Colors.red[800]),
        body: Dicepage(),
      ),
    );
  }
}

class Dicepage extends StatefulWidget {
  _Dicepage createState() => _Dicepage();
}

class _Dicepage extends State<Dicepage> {
  int lfd = 6;
  int rfd = 6;
  void changed() {
    setState(() {
      rfd = Random().nextInt(6) + 1;
    });
  }

  void changed1() {
    setState(() {
      lfd = Random().nextInt(6) + 1;
    });
  }

  build(context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changed1();
              },
              child: Image(
                image: AssetImage('images/dice$lfd.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changed();
              },
              child: Image(
                image: AssetImage('images/dice$rfd.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
