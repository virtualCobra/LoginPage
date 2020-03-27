import 'package:flutter/material.dart';
import 'home.dart';

class UnAuth extends StatelessWidget {
  @override
  //static const String _title = 'login failed';
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('login failed'),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.blue])),
            child: Container(
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  
                  child: Text("GET BACK TO LOGIN PAGE"),
                ),
              ),
            )),
      ),
    );
  }
}
