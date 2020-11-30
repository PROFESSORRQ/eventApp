import 'package:flutter/material.dart';
import '../models/event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EventAdd extends StatelessWidget {
  final Event1 newEvent;
 
  EventAdd({Key key, this.newEvent}) : super(key: key);
   
    addData(){


      CollectionReference collectionReference = FirebaseFirestore.instance.collection('events');
      collectionReference.add(newEvent.toJSON());
      
    }
  @override
  Widget build(BuildContext context) {
   TextEditingController _namecontroller = new TextEditingController();
      TextEditingController _desccontroller = new TextEditingController();
         TextEditingController _sdatecontroller = new TextEditingController();
            TextEditingController _edatecontroller = new TextEditingController();
               TextEditingController _controller = new TextEditingController();
                  // TextEditingController _spermicontroller = new TextEditingController();
                  //    TextEditingController _epermicontroller = new TextEditingController();
                        TextEditingController _loccontroller = new TextEditingController();
                       TextEditingController _snamecontroller = new TextEditingController();
              
     return Scaffold(
       appBar: new AppBar(title: new Text("Add an event"),),
      body: Container(
        height: 1000,
        width: 500,
         color: Colors.grey,child: new ListView(
      
          children: [
            new SizedBox(height: 10.0,),
            new Text("Event Name",style: styleop,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _namecontroller,
              autofocus: true,
              
              ),
            ),
            new Text("Add Description",style: styleop,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _desccontroller,
              autofocus: true,
              
              ),
            ),
            new Text("Add Starting Date",style: styleop,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _sdatecontroller,
              autofocus: true,
               keyboardType: TextInputType.datetime,
              ),

            ),
            new Text("Add ending Date",style: styleop,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _edatecontroller,
              autofocus: true,
              keyboardType: TextInputType.datetime,
              ),
            ),
             new Text("Add SocietyName",style: styleop,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _snamecontroller,
              autofocus: true,
              
              ),
            ),
            
             new Text("Add Location",style: styleop,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _loccontroller,
              autofocus: true,
              
              ),
            ), new Text("Add Number of students",style: styleop,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _controller,
              autofocus: true,
              keyboardType: TextInputType.number,
              ),
            ),
            new SizedBox(height: 10.0),
            new RaisedButton(onPressed: () {
             newEvent.title = _namecontroller.text;
             newEvent.desc = _desccontroller.text;
             newEvent.society_name = _snamecontroller.text;
             newEvent.number = int.parse(_controller.text);
             newEvent.loc = _loccontroller.text;
            // newEvent.start= _sdatecontroller.value as DateTime;
             //newEvent.end = _edatecontroller.value as DateTime;
              addData();
              
            })
          ],
        ),
     )); 
  }
}

TextStyle styleop = new TextStyle(
  fontFamily: "Poppins",
  fontSize: 18
);