import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "Email Address")
            ),
            SizedBox(height:10.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText:"Password"),
            ),
            SizedBox(height: 40),
            RaisedButton(
              child: Text("LOGIN"), onPressed: () {}
              ),
              SizedBox(height:20),
              Text('Don\'t have an account? Sign up.')
          ],
        )
      )
    );
  }
}

