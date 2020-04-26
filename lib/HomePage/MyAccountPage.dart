import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyAccountPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
return new _MyAccountPageState();}}
class _MyAccountPageState extends State<MyAccountPage>{
  @override
  Widget build(BuildContext context) {
   new Scaffold(
     appBar:new AppBar(
       backgroundColor: Colors.red.shade900,
       title: new Text('𝓜𝔂 𝓐𝓬𝓬𝓸𝓾𝓷𝓽'),
     ),
    body: new Container(
      padding: EdgeInsets.all(22),
      alignment: Alignment.center,
      height: 17,
      width: 20,
//      child: new Text('hxx'),
//      padding: EdgeInsets.all(22),
//      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Image.asset('images/AAPGacc.jpg',
//        height: 10,
//        width: 1000,
          ),
        ],
      ),
    ),
   );
  }

}
