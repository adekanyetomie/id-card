import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Id() ,
));
class Id extends StatefulWidget {
  @override
  _IdState createState() => _IdState();
}

class _IdState extends State<Id> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Identification Card'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blueGrey[700],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level++;
          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.blueGrey[300],
            ),
            Text(
              'Name:',
              style: TextStyle(
                color: Colors.blueGrey[300],
                letterSpacing: 2.0,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height:15.0),
            Text(
              'Adekanye Tomi',
              style: TextStyle(
                color: Colors.cyanAccent[100],
                fontSize: 30.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0 ),

            Text(
              'Level:',
              style: TextStyle(
                color: Colors.blueGrey[300],
                letterSpacing: 2.0,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height:15.0),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.cyanAccent[100],
                fontSize: 30.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0 ),
            Text(
              '',
              style: TextStyle(
                color: Colors.blueGrey[300],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0 ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blueGrey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'adekanyetomy@gmail.com',
                  style: TextStyle(
                      color: Colors.blueGrey[400],
                      fontSize: 18.0,
                      letterSpacing: 2.0

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
