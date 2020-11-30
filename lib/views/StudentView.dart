
import 'package:flutter/material.dart';
import '../models/event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class StudentView extends StatefulWidget {
  @override
  _StudentViewState createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
   List eventss;
  fetchData(){
    
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('events');
    collectionReference.where('eventPermi', isEqualTo: true).snapshots().listen((snapshots) { 
      setState(() {
        eventss = snapshots.docs;
        print("${eventss[0]['eventName'].toString()}");
      });
    });
    
     
   }
  
  @override 
  void initState(){
    fetchData();
    super.initState();
  }
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    //final newevent = new Event1(null,null,null,null,false,false,null,null,null);
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Events",
        style : new TextStyle(color: Colors.greenAccent, fontFamily: "Poppins")),
        // actions: [
        //   new IconButton(icon: new Icon(Icons.add), onPressed: (){
        //     Navigator.push(context, MaterialPageRoute(builder: (context)=> EventAdd(newEvent: newevent,)));
        //   })
        // ],
      ),
      
      body: new Container(
         height: 1100,
         width: 500,
        child: new Column(
      children : [Text("Events Upcoming", style: new  TextStyle(color: Colors.redAccent, fontSize: 28, fontFamily: "Poppins"),),
      // new RaisedButton(color: Colors.indigo,onPressed: (){ fetchData();}, child: new Text("fetchh")),
       Container(
          height: 600,
          width: 500,
          child: builder(eventss, context),
       )
      ]
      
      ),
    ));
  }
}
//isme dates kon kon si booked hai or konsi loc ke liye bhi dikhana hai
Widget builder(List event,BuildContext context){
 if(event == null){
  return Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 400, 20.0, 400.0),
    child: Center(child : Text("No Events right now!")),
  );
 }
 else{
   return new  ListView.builder(itemCount: event.length,
   shrinkWrap: true,
   physics: ClampingScrollPhysics(),
   itemBuilder:(BuildContext context, int index){
           Map<String,dynamic> data;
           data = event[index].data();
           return Container(
                      margin: EdgeInsets.all(5.0),
                      height: 150,
                      child: Card(
                        elevation: 10,
                        child: Row(
                          children: [
                           Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 5.0),
                              child: Container(
                                width: 120.0,
                                height: 120.0,
                                child: Image.asset(
                                  "images/thapar.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              new Text("${data['eventName']} by ${data['society']}",
                              style: new TextStyle(color: Colors.black87, fontSize: 16, fontFamily: "Poppins",)),
                              SizedBox(height: 10.0),
                              new Text("Start Date : ${data['startDate']} and End Date: ${data['endDate']} ",
                              style: new TextStyle(
                                fontSize: 14,
                              )),
                              SizedBox(height: 10.0),
                              Text("Location Booked : ${data['location']}",
                              style: new TextStyle(fontSize: 13, fontFamily: "Poppins"),),
                              SizedBox(height: 10.0),
                              viewDetails(index, event)
                          ],
           )])));
         });
 }
}
Widget viewDetails(int number, List event){

 return  GestureDetector(
child : new Text(" View Details >", style: TextStyle(fontFamily: "Poppins", color: Colors.blueAccent, fontWeight: FontWeight.bold)),
//onTap:-
 );
 
}