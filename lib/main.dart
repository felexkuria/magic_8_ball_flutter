import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: DicePage(),
      title: 'Magic 8 Ball',
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
int press=1;
void _magicLink(){
  press=Random().nextInt(5)+1;
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Center(child: Text('Magic  Ball',style: TextStyle(
          letterSpacing: 1.2,fontSize: 24.0,
        ),)),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
              icon: Icon(
                Icons.account_box_rounded,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    _magicLink();
                  });
                },
                child: Image.asset('assets/images/ball$press.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
