import 'package:flutter/material.dart';
import '../models/event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_time_picker/date_time_picker.dart';
class EventAdd extends StatefulWidget {
  final Event1 newEvent;
 
  EventAdd({Key key, this.newEvent}) : super(key: key);

  @override
  _EventAddState createState() => _EventAddState();
}

class _EventAddState extends State<EventAdd> {
    addData(){


      CollectionReference collectionReference = FirebaseFirestore.instance.collection('events');
      collectionReference.add(widget.newEvent.toJSON());
      
    }
    DateTime _sdatetime = DateTime.now();
    DateTime _edatetime = DateTime.now();
  
    
       
     
    
    
  
        
     
    
    
  @override
  Widget build(BuildContext context) {
   TextEditingController _namecontroller = new TextEditingController();
      TextEditingController _desccontroller = new TextEditingController();
        // TextEditingController _sdatecontroller = new TextEditingController();
          //  TextEditingController _edatecontroller = new TextEditingController();
               TextEditingController _controller = new TextEditingController();
                  // TextEditingController _spermicontroller = new TextEditingController();
                  //    TextEditingController _epermicontroller = new TextEditingController();
                        TextEditingController _loccontroller = new TextEditingController();
                       TextEditingController _snamecontroller = new TextEditingController();
              
     return Scaffold(
       appBar: new AppBar(title: new Text("Add an event",style: new TextStyle(fontFamily: "Poppins"),),backgroundColor: Colors.greenAccent,shadowColor: Colors.blueGrey),
      body: Container(
        height: 1000,
        width: 500,
         color: Colors.white,child: new ListView(
      
          children: [
            new SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Event Name",style: styleop,),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _namecontroller,
              
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Add Description",style: styleop,),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _desccontroller,
              
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Add Starting Date",style: styleop,),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new RaisedButton(child: new Text("Enter Date", style: new TextStyle(fontFamily: "Poppins")),onPressed: ()async{
                
             DateTime _sdate = await showDatePicker(context: context, initialDate: _sdatetime, firstDate: DateTime(2020), lastDate: DateTime(2021));
                _sdatetime = _sdate;
              },)

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Add ending Date",style: styleop,),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
             child: new RaisedButton(child: new Text("Enter Date", style: new TextStyle(fontFamily: "Poppins")),onPressed: ()async{
               
                    DateTime _edate = await showDatePicker(context: context, initialDate: _edatetime, firstDate: DateTime(2020), lastDate: DateTime(2022));
                _edatetime = _edate;
               
              },)
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: new Text("Add SocietyName",style: styleop,),
             ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _snamecontroller,
              
              
              ),
            ),
            
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: new Text("Add Location",style: styleop,),
             ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _loccontroller,
        
              
              ),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Add Number of students",style: styleop,),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new TextFormField(controller: _controller,
         
              keyboardType: TextInputType.number,
              ),
            ),
            new SizedBox(height: 10.0),
           SizedBox(
                                      height: 50.0,
                                      width: MediaQuery.of(context).size.width*0.65,
                                      child: new RaisedButton(onPressed: (){
                                            widget.newEvent.title = _namecontroller.text;
             widget.newEvent.desc = _desccontroller.text;
             widget.newEvent.society_name = _snamecontroller.text;
             widget.newEvent.number = int.parse(_controller.text);
             widget.newEvent.loc = _loccontroller.text;
             widget.newEvent.end = _edatetime.toString();
              widget.newEvent.start = _sdatetime.toString();
            // newEvent.start= _sdatecontroller.value as DateTime;
             //newEvent.end = _edatecontroller.value as DateTime;
              addData();
              
              
              showAlertDialog(context);
                                      }
                                      ,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25.0),

                                        ),

                                        child: new Text("Submit", style: new TextStyle(
                                            fontSize: 20,
                                            color: Colors.greenAccent,
                                            fontFamily : "Poppins"
                                        ),),
                                        color: Colors.white,),
                                    ),
            
            
          ],
        ),
     )); 
  }
}

TextStyle styleop = new TextStyle(
  fontFamily: "Poppins",
  fontSize: 18,
  fontWeight: FontWeight.bold
);
showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { Navigator.pop(context); },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Event Confirmation", style: TextStyle(color: Colors.greenAccent, fontFamily: "Poppins",)),
    content: Text("Your Event request has been sent! Wait for the confirmation!",style: TextStyle( fontFamily: "Poppins",)),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}