import 'package:flutter/material.dart';
import '../models/if.dart';

class IFacilities extends StatefulWidget {
  final String pageTitle;

  IFacilities({Key key, this.pageTitle}) : super(key: key);

  @override
  _IFacilitiesState createState() => _IFacilitiesState();
}
 
class _IFacilitiesState extends State<IFacilities> {
  @override
  Widget build(BuildContext context) {
    var myGridView = new GridView.builder(
      itemCount: ifif.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      
      itemBuilder: (BuildContext context, index){
        return new GestureDetector(
          child: new Card(
            elevation: 5.0,
            child: new Container(
              
              alignment: Alignment.center,
              margin: new EdgeInsets.all(10.0),
              child: new Text(ifif[index].id,
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
                   new Text(ifif[index].id),
                 ],
                ),
                content: SizedBox(
                      height: 200,
                      width: double.minPositive,
               child: SingleChildScrollView(

                physics: ScrollPhysics(),
                

               child: Column(children: <Widget>[
               
                
                new Image(image: AssetImage(ifif[index].photo),
               alignment: Alignment.center,),

                Container(
                  child: Text("세부 위치 :",
                  ),
                  //color: Colors.blue,
                  alignment: Alignment.centerLeft,
                ),
                
                Container(
                     child:   ListView.builder(
                        shrinkWrap: true,
                        physics:NeverScrollableScrollPhysics(),
                        itemCount: ifif[index].loca.length,
                        itemBuilder: (BuildContext context, int idx){
                        return new Text(ifif[index].loca[idx],
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