import 'package:flutter/material.dart';
import 'package:myaccount/HomePage/Login.dart';
import 'package:myaccount/HomePage/MyAccountPage.dart';


void main() => runApp(new MaterialApp(home: new MyAccount(),));
class MyAccount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation main',
//      routes: <String , WidgetBuilder>{
//        '/': (BuildContext  context) => new Home(),
//        '/MyAccountPage': (BuildContext  context) => new MyAccountPage(),
//      },
      home: new Home(),
    );
  }


}

