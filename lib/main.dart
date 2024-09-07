import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'My ID Card',
          style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Picture1.png'),
                radius: 80,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0),
            ),
            SizedBox(height: 10,),
            Text(
              'Komsun Tamanakijprasart',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            //----------------------------------------------------
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0),
            ),
            SizedBox(height: 10,),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            //-----------------------------------------------------
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey),
                SizedBox(width: 10,),
                Text(
                  'komxun@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 200,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ninjaLevel = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
              ),
              child: Text(
                'RESET',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
          },
        child: Icon(Icons.add),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}





