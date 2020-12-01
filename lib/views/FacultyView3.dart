// import 'package:flutter/material.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';
// final int a = 0;
// class Permission extends StatefulWidget {
  
//   const Permission({Key key, this.number}) : super(key : key);
//    final int number;
//   @override
 
//   _PermissionState createState() => _PermissionState();
// }

// class _PermissionState extends State<Permission> {
  
//   List eventss;
//  fetchData(){
    
//     CollectionReference collectionReference = FirebaseFirestore.instance.collection('events');
//     collectionReference.snapshots().listen((snapshots) { 
//       setState(() {
//         eventss = snapshots.docs;
//         print("${eventss[widget.number]['eventName'].toString()}");
//       });
//     });
    
     
//    }
   
//    updateData(int number )async{
//        CollectionReference collectionReference = FirebaseFirestore.instance.collection('events');
//        QuerySnapshot querySnapshot = await collectionReference.get();
//       querySnapshot.docs[number].reference.update({"eventPermi": true, "spacePermi" : true});
//    }
//     @override 
//   void initState(){
//     fetchData();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(title: new Text("Event Details", style: new TextStyle(fontFamily: "Poppins"),),
//       backgroundColor: Colors.deepPurpleAccent),
//       body: Container(
//       height: 1000,
//       width: 400,
//       child: new Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children:[
//            new Text("${eventss[widget.number]['eventName']}", style: TextStyle(
//              color: Colors.black,
//              fontWeight: FontWeight.bold,
//              fontSize: 20
//            )),
//            SizedBox(height: 10.0),
//            new Text("About Event : - ${eventss[widget.number]['description']}", style: TextStyle(
//              color: Colors.grey,
//              fontWeight: FontWeight.w200,
//              fontSize: 13
//            )),
//             SizedBox(height: 10.0),
//             new Text("Start Date/Time : - ${eventss[widget.number]['start']} to End Date/Time : -${eventss[widget.number]['end']} ", style: TextStyle(
//              color: Colors.grey,
//              fontWeight: FontWeight.w200,
//              fontSize: 13
//            )),
//                    SizedBox(height: 10.0),      
//                    new Text("Location: - ${eventss[widget.number]['location']}  ", style: TextStyle(
//              color: Colors.black,
//              fontWeight: FontWeight.w200,
//              fontSize: 13
//            )),
//            new RaisedButton(child: new Text("Give Permission?"),color: Colors.deepPurpleAccent, onPressed: (){
//              updateData(widget.number);
//            },)
//         ]
//       ),
//     ));
//   }
// }

  