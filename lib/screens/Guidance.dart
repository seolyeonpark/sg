import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import "../models/building.dart";

class Guidance extends StatefulWidget {
  final String pageTitle;

  Guidance({Key key, this.pageTitle}) : super(key: key);

  @override
  _GuidanceState createState() => _GuidanceState();
} 

class _GuidanceState extends State<Guidance> {
  
  @override
  Widget build(BuildContext context) {
    
    var myGridView = new GridView.builder(
      itemCount: building.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      
      itemBuilder: (BuildContext context, index){
        return new GestureDetector(
          child: new Card(
            elevation: 5.0,
            child: new Container(
              
              alignment: Alignment.center,
              margin: new EdgeInsets.all(10.0),
              child: new Text(building[index].id,
              textAlign: TextAlign.center),
              ),
          ),
          onTap:(){
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context){
              return AlertDialog(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
                title: new Column(
                 children: <Widget> [
                   new Text(building[index].id),
                 ],
                ),
                content: SizedBox(
                      height: 200,
                      width: double.minPositive,
               child: SingleChildScrollView(

                physics: ScrollPhysics(),
                

               child: Column(children: <Widget>[
               Container(
                 child: Image.asset(building[index].photo,
                 fit: BoxFit.cover,),
                 alignment: Alignment.center,
                 ),
                 
                Container(
                  child: Text("사용학과 :",
                  ),
                  //color: Colors.blue,
                  alignment: Alignment.centerLeft,
                ),
                Container(
                     child:   ListView.builder(
                        shrinkWrap: true,
                        physics:NeverScrollableScrollPhysics(),
                        itemCount: building[index].major.length,
                        itemBuilder: (BuildContext context, int idx){
                        return new Text(building[index].major[idx],
                        );
                         } ),
               
                ),     
                ],
                    ),
               
                
                
               ),
              
          ),
                
                

                
                actions: <Widget>[
                  new TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: new Text("확인"))
                ],
              );
          },);
          },
            
        );

        
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Soongil',
            style: TextStyle(color: Colors.white, fontSize: 30)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:  myGridView,
                
      

      
      
    );
  }
}
