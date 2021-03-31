import 'package:flutter/material.dart';
//url_laubcher 패키지
import 'package:url_launcher/url_launcher.dart';

class Bus extends StatefulWidget {
  final String pageTitle;

  Bus({Key key, this.pageTitle}) : super(key: key);

  @override
  _BusState createState() => _BusState();
} 

class _BusState extends State<Bus> {
  _launchButton(String buttonText, String url) {
    return RaisedButton(
      color: Colors.amber[700],
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Text(buttonText,style: TextStyle(color: Colors.white, fontSize: 30)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soongil',
            style: TextStyle(color: Colors.white, fontSize: 30)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _launchButton('셔틀버스', 'https://homepage.sch.ac.kr/sch/06/06010000.jsp?mode=view&article_no=20210326163339450428&pager.offset=0&board_no=20090723152156588979'),
            SizedBox(height:40),
            _launchButton('통학버스', 'https://homepage.sch.ac.kr/sch/06/06010000.jsp?mode=view&article_no=20210223133252080958&pager.offset=100&board_no=20090723152156588979',),
          ],
        ),
      ),
    );
  }
}
