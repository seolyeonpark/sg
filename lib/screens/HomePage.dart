import 'package:flutter/material.dart';
//Drawer Package
import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:soongil/screens/Bus.dart';
import 'package:soongil/screens/EFacilities.dart';
import 'package:soongil/screens/Guidance.dart';
import 'package:soongil/screens/IFacilities.dart';
import 'package:soongil/screens/Roadmap.dart';

class HomePage extends StatefulWidget {
  final String pageTitle;
 
  HomePage({Key key, this.pageTitle}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //드로워
      body: AnimatedDrawer(
        homePageXValue: 220,
        homePageYValue: 70,
        homePageAngle: -0.2,
        homePageSpeed: 250,
        shadowXValue: 170,
        shadowYValue: 120,
        shadowAngle: -0.3,
        shadowSpeed: 550,
        //드로워 출입 아이콘
        openIcon: Icon(Icons.menu, size: 50, color: Colors.white),
        closeIcon: Icon(Icons.arrow_back_ios, size: 50, color: Colors.white),
        shadowColor: Colors.yellow[700],
        backgroundGradient:
            LinearGradient(colors: [Colors.amber[600], Colors.amber[900]]),
        //메뉴 페이지
        menuPageContent: Padding(
          padding: const EdgeInsets.only(top: 100.0, left: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //드로워 메뉴 버튼
              children: [
                Row(
                  children: [
                    Text(
                      "Soongil",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Guidance()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.school_outlined, color: Colors.white, size: 30,),
                      Text("학교건물",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),])
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Roadmap()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.add_location_outlined, color: Colors.white, size: 30,),
                      Text("로드맵",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),])
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IFacilities()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.apartment_outlined, color: Colors.white, size: 30,),
                      Text("편의시설",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),])
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bus()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.directions_bus_outlined, color: Colors.white, size: 30,),
                      Text("셔틀버스",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),])
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EFacilities()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.audiotrack, color: Colors.white, size: 30,),
                      Text("외부시설",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),])
                ),
              ],
            ),
          ),
        ),
        //홈화면
        homePageContent: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.yellow[600],
          child: Column(children: [
            SizedBox(height: 30),
            Text('Soongil',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 130),
            Text('로고 이미지'),
            SizedBox(height: 30),
            Text('순천향대학교에 오신 걸 환영합니다.',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[85],
                    fontWeight: FontWeight.bold))
          ]),
        ),
      ),
    );
  }
}
