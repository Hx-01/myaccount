import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NotiPage.dart';
import 'Profile.dart';

class MyAccountPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
return new _MyAccountPageState();}}
class _MyAccountPageState extends State<MyAccountPage>{
  void _Star(){
    Icon(Icons.star, color: Colors.yellow,);
  }
  void _Comment(){

  }
  void _Share(){

  }
  void _Add(){

  }
  void _Noti() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => NotiPage()),);}
  void _Profile(){
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => Profile()),);
  }

  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: new Text('𝕄𝕪𝔸𝕔𝕔𝕠𝕦𝕟𝕥'),
      ),
      body: new Container(
//    padding: EdgeInsets.all(33.0),
        child: new ListView(
          children: <Widget>[
            new Image.asset('images/AAPGacc.jpg'),
            new Row(
              children: <Widget>[
                new IconButton(icon: Icon(Icons.star_border), onPressed: _Star),
                new IconButton(icon: Icon(Icons.comment, color: Colors.red.shade900,), onPressed: _Comment),
                new IconButton(icon: Icon(Icons.share, color: Colors.red.shade900,), onPressed: _Share),

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: _Add, tooltip: 'Add',
       child: new Icon(Icons.add_circle, color: Colors.yellow,),
        backgroundColor: Colors.red.shade900,
      ),

      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.home, color: Colors.yellow,),
       title: new Text('Home'),backgroundColor: Colors.red.shade900 ),
        new BottomNavigationBarItem(icon: new IconButton(icon: Icon(Icons.notifications, color: Colors.yellow,), onPressed: _Noti),
            title: new Text('Notifications') ),
        new BottomNavigationBarItem(icon: new Icon(Icons.search, color: Colors.yellow,),
            title: new Text('Search') ),
        new BottomNavigationBarItem(icon: new IconButton(icon: Icon(Icons.account_circle, color: Colors.yellow,), onPressed: _Profile),
            title: new Text('MyAccount') ),
      ]
      , onTap: (int x) => debugPrint('icon $x'),
      ),
    );
  }

}








//body: new Container(
//padding: EdgeInsets.all(22),
//alignment: Alignment.center,
//height: 17,
//width: 20,
//child: new Column(
//children: <Widget>[
////          new Image.asset('/images/AAPGacc.jpg'),
//new Row(
//children: <Widget>[
//new IconButton(icon: Icon(Icons.star_border), onPressed: ()=> new Icon(Icons.star, color: Colors.yellow,))
//],
//)
//],
//),
//),
