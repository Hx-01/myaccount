import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }

}

class _ProfileState extends State<Profile>{
  void _editPro(){

  }
  void _Star(){
    Icon(Icons.star, color: Colors.yellow,);
  }
  void _Comment(){

  }
  void _Share(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text('Profile'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Icon(
              Icons.account_circle,
                  size: 200,
              color: Colors.black54,
            ),
            Text('Hassan Elsayed',
            style: TextStyle(
              fontSize: 32,color: Colors.black
            ),
            textAlign: TextAlign.center,),
            Text('Hx74',
              style: TextStyle(
                  fontSize: 23,color: Colors.black87
              ),
              textAlign: TextAlign.center,),
                Padding(padding: EdgeInsets.all(10.0),),
            Text('IT-App member at AAPG',
              style: TextStyle(
                  fontSize: 23,color: Colors.black87
              ),
              textAlign: TextAlign.center,),
            Padding(padding: EdgeInsets.all(10.0),),
            new Center(
              child:  new FlatButton(
                color: Colors.red.shade900,
                textColor: Colors.white,
                onPressed: _editPro,
                child: new Text('Edit Profile',
                style: TextStyle(
                  fontSize: 30,
                ),),
              ),),
            Padding(padding: EdgeInsets.all(15.0),),
            Row(
              children: <Widget>[
                Expanded(child: Text('4',
                  style: TextStyle(
                      fontSize: 38,color: Colors.black
                  ),
                  textAlign: TextAlign.center,),),
                Expanded(child: Text('1',
                  style: TextStyle(
                      fontSize: 38,color: Colors.black
                  ),
                  textAlign: TextAlign.center,),),
                Expanded(child: Text('1',
                  style: TextStyle(
                      fontSize: 38,color: Colors.black
                  ),
                  textAlign: TextAlign.center,),),
              ],
            ),
          Row(
            children: <Widget>[
              Expanded(child: Text('Posts',
                style: TextStyle(
                    fontSize: 25,color: Colors.black54
                ),
                textAlign: TextAlign.center,),),
             Expanded(child: Text('followers',
                style: TextStyle(
                    fontSize: 25,color: Colors.black54
                ),
                textAlign: TextAlign.center,),),
             Expanded(child: Text('following',
                style: TextStyle(
                    fontSize: 25,color: Colors.black54
                ),
                textAlign: TextAlign.center,),),
            ],
          ),
            Padding(padding: EdgeInsets.all(15.0),),
            Card(
             child: ListTile(
                leading: Icon(Icons.account_circle,size: 40,),
                title: Text("Hassan Elsayed",style: TextStyle(fontSize: 25,color: Colors.black87),) ,
                subtitle: Text("Hx74",style: TextStyle(fontSize: 18),),
            ),
            ),
            new Image.asset('images/1.jpg'),
        new Row(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.star_border), onPressed: _Star),
            new IconButton(icon: Icon(Icons.comment, color: Colors.red.shade900,), onPressed: _Comment),
            new IconButton(icon: Icon(Icons.share, color: Colors.red.shade900,), onPressed: _Share),
          ],
        ),
      ],),
    ),);
  }

}