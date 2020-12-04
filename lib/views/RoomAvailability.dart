import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Room extends StatefulWidget {
  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Color color2 = Colors.greenAccent;
DateTime _edatetime = DateTime.now();
List eventss;
  fetchData(String date){
    
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('events');
    collectionReference.where('startDate', isEqualTo: date).snapshots().listen((snapshots) { 
      
      setState(() {
        eventss = snapshots.docs;
        print("${eventss[0]['eventName'].toString()}");
      });
    });
    
     
   }
   @override 
  void initState(){
   
    super.initState();
     fetchData(_edatetime.toString());
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Room Availability",style: new TextStyle(fontFamily: "Poppins"),),backgroundColor: Colors.greenAccent,shadowColor: Colors.blueGrey),
      body: new Container(
        height: 1100,
        child: ListView(
          
          children: [
 new SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Enter date of your event",style: styleop,),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
               child: new RaisedButton(color: color2,child: new Text("Enter Date", style: new TextStyle(fontFamily: "Poppins")),onPressed: ()async{
                 
                      DateTime _edate = await showDatePicker(context: context, initialDate: _edatetime, firstDate: DateTime(2020), lastDate: DateTime(2022));
                  setState((){
                   _edatetime = _edate;
                   color2= Colors.grey;
                   fetchData(_edatetime.toString());
                  });
                  
               },),),
         builder(eventss,context),
             
          ],
        ) ,),
    );
  }
}
TextStyle styleop = new TextStyle(
  fontFamily: "Poppins",
  fontSize: 18,
  fontWeight: FontWeight.bold
);
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
                      height: 130,
                      child: Card(
                        elevation: 12,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              new Text("${data['eventName']} by ${data['society']}",
                              style: new TextStyle(color: Colors.black87, fontSize: 16, fontFamily: "Poppins",fontWeight: FontWeight.bold)),
                              SizedBox(height: 10.0),
                              new Text("Start Date : ${data['startDate']} ",
                              style: new TextStyle(
                                fontSize: 14,
                              )),
                               SizedBox(height: 10.0),
                              new Text("End Date : ${data['endDate']} ",
                              style: new TextStyle(
                                fontSize: 14,
                              )),
                              SizedBox(height: 10.0),
                              Text("Location Booked : ${data['location']}",
                              style: new TextStyle(fontSize: 13, fontFamily: "Poppins"),),
                                
                          ],
           )])));
         });
 }
}