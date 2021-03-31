import 'package:flutter/material.dart';

class Roadmap extends StatefulWidget {
  final String pageTitle;

  Roadmap({Key key, this.pageTitle}) : super(key: key);

  @override
  _RoadmapState createState() => _RoadmapState();
}
 
class _RoadmapState extends State<Roadmap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soongil',
            style: TextStyle(color: Colors.white, fontSize: 30)),
        centerTitle: true,
        elevation: 0.0,
      ),

      
      //바디
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/School_map.png', width: 400, ),
          ],
        ),
      ),
    );
  }
}
