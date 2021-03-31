import 'package:flutter/material.dart';

class EFacilities extends StatefulWidget {
  final String pageTitle;

  EFacilities({Key key, this.pageTitle}) : super(key: key);

  @override
  _EFacilitiesState createState() => _EFacilitiesState();
}
 
class _EFacilitiesState extends State<EFacilities> {
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
          //아이콘 버튼
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.restaurant),
              iconSize: 100,
              color: Colors.blue,
              onPressed: () {
                setState(() {});
              },
            ),
            Text('식당',style: TextStyle(color: Colors.blue, fontSize: 30)),
            SizedBox(height: 30),
            IconButton(
              icon: const Icon(Icons.icecream),
              iconSize: 100,
              color: Colors.green,
              onPressed: () {
                setState(() {});
              },
            ),
            Text('카페',style: TextStyle(color: Colors.green, fontSize: 30)),
            SizedBox(height: 30),
            IconButton(
              icon: const Icon(Icons.liquor),
              iconSize: 100,
              color: Colors.lightGreen,
              onPressed: () {
                setState(() {});
              },
            ),
            Text('술집',style: TextStyle(color: Colors.lightGreen, fontSize: 30))
          ],
        ),
      ),
    );
  }
}
