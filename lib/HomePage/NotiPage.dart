import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotiPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NotiPageState();
  }

}
class _NotiPageState extends State<NotiPage>{

  final List<String>
  listof=["AAPG", "AAPG", "AAPG"];
  List text= ["is following you", "Liked your Post", "Commented: nice. on your post",];
  List time = ["2 days ago", "1 day ago", "1 day ago"];
  List image= ['','images/1.jpg','images/1.jpg'];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.red.shade900,
       title: new Text('Notifications'),
     ),
     body: Container(
       child: ListView.builder(
           itemBuilder: (_,int index)=>listItem(this.listof[index],this.text[index],this.time[index],this.image[index]),
         itemCount: this.listof.length,

       ),
     ),

   );
  }

}

class listItem extends StatelessWidget{

  String user;
  String text;
  String time;
  String image;

  listItem(this.user, this.text, this.time, this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Container(
        margin: EdgeInsets.all(9),
        padding: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Text(user[0]),
            ),
            Padding(padding: EdgeInsets.all(4),),
            Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(8),),
                Text(user, style: TextStyle(fontSize: 20),),
                //Padding(padding: EdgeInsets.all(8),),
                Text(time, style: TextStyle(fontSize: 17, color: Colors.black54),),
              ],
            ),
            Text(text, style: TextStyle(fontSize: 17, color: Colors.black54),),
          ],
        ),


      ),
    );
  }

}

