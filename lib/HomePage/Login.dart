import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyAccountPage.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new _HomeState();
  }

}

class _HomeState extends State<Home> {
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();





  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        backgroundColor: Colors.red.shade900,
        title: new Text('Login'),
      ),
      body: new Container(
        padding: EdgeInsets.all(22),
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
//            new Image.asset('images/images.jpg',
////            height: 1000,
////              width: 1000,
//            ),
            new Container(
              padding: EdgeInsets.all(33),
              height: 120,
              width: 360,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      icon: new Icon(Icons.person , color: Colors.red.shade900, size: 30,),
                      hintText: 'E-mail'
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              height: 120,
              width: 300,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        icon: new Icon(Icons.lock, color: Colors.red.shade900, size: 30,),
                        hintText: 'Password'
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(11),),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new FlatButton(
                          color: Colors.red.shade900,
                          textColor: Colors.white,
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> MyAccountPage()),
                          );},
                          child: new Text('Login'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}