import 'package:flutter/material.dart';
import 'unauthorisedLogin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new LogInPage(),
        theme: new ThemeData(
          primaryColor: Colors.purple[1000],
          accentColor: Colors.white10,
        ));
  }
}

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  /*final Username = TextEditingController();
  Widget dispose() {
    print("disposing");
    Username.dispose();
    super.dispose();
    return unAuth();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Theme.of(context).primaryColor, Theme.of(context).accentColor],
        end: Alignment.topCenter,
        begin:Alignment.bottomCenter,
      )),
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.only(top: 400, right: 50, left: 50),
      child: Column(
        children: <Widget>[
          Container(
              child: Text(
            "myOWNloginPAGE",
            textAlign: TextAlign.left,
          )),
          new Form(
            child: Theme(
              data: ThemeData(
                inputDecorationTheme: InputDecorationTheme(
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              child: Column(
                children: <Widget>[
                  new TextFormField(
                    decoration: new InputDecoration(hintText: "enter email"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  new TextFormField(
                    decoration: new InputDecoration(
                      hintText: "password",
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  RaisedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UnAuth())),
                    child: Text("login"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
