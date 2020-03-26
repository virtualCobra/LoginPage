import 'package:flutter/material.dart';
import 'home.dart';


class UnAuth extends StatelessWidget {
  @override
  //static const String _title = 'login failed';
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
          appBar: AppBar(
            title: Text( 'login failed'),
          ),
          body: 
            Container(
                padding: EdgeInsets.only(top: 20.0, left: 20.0),
                child: GestureDetector(
                  onDoubleTap:  ()=> Home(),
                  child: Container(
                    child: Text("Return to home page"),
                  ),
                )),
          ),
    );
  }
}
