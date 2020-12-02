import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
class EventAccepted extends StatefulWidget {
  @override
  _EventAcceptedState createState() => _EventAcceptedState();
}

class _EventAcceptedState extends State<EventAccepted> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
         height: 1100,
         width: 500,
        child: new Column(
      children : [Text("Events Upcoming", style: new  TextStyle(color: Colors.indigo, fontSize: 18, fontFamily: "Poppins"),),
      // new RaisedButton(color: Colors.indigo,onPressed: (){ fetchData();}, child: new Text("fetchh")),
       Container(
          height: 600,
          width: 600,
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
                      height: 200,
                      child: Card(
                        elevation: 20,
                        child: Row(
                          children: [
                           Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 5.0),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
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
                              style: new TextStyle(color: Colors.black87, fontSize: 16, fontFamily: "Poppins",fontWeight: FontWeight.bold)),
                              SizedBox(height: 10.0),
                              new Text("Start Date : ${data['startDate']}  ",
                              style: new TextStyle(
                                fontSize: 14,
                              )),
                              SizedBox(height: 10.0),
                              new Text("End Date : ${data['endDate']}  ",
                              style: new TextStyle(
                                fontSize: 14,
                              )),
                              SizedBox(height: 10.0),
                              Text("Location Booked : ${data['location']}",
                              style: new TextStyle(fontSize: 13, fontFamily: "Poppins"),)
                          ],
           )])));
         });
 }
}