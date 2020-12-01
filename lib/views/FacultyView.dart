
import 'package:flutter/material.dart';

import './FacultyView1.dart';
import './facultyView2.dart';

class FacultyView extends StatefulWidget {
  @override
  _FacultyViewState createState() => _FacultyViewState();
}

class _FacultyViewState extends State<FacultyView> {
  int _currentindex = 0;
   PageController pageController = PageController(initialPage: 0,
   keepPage: true);
   Widget buildPageView(){
     return PageView(controller: pageController,
     onPageChanged: (index){
      setState(() {
        _currentindex = index;
        print(_currentindex);
      });
     },
     children: [
       EventAccepted(),
       EventRequest(),
       
     ],
     );
   }
  
  @override
  Widget build(BuildContext context) {
  //  final newevent = new Event1(null,null,null,null,false,false,null,null,null);
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text("Events",
        style : new TextStyle(color: Colors.greenAccent, fontFamily: "Poppins")),
        // actions: [
        //   new IconButton(icon: new Icon(Icons.add), onPressed: (){
        //     Navigator.push(context, MaterialPageRoute(builder: (context)=> EventAdd(newEvent: newevent,)));
        //   })
        // ],
      ),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.event_available),
            title: Text("Events Accepted"),
            backgroundColor: Colors.deepPurpleAccent.shade400
             ),
               BottomNavigationBarItem(
            icon:Icon(Icons.event_note),
            title: Text("Events Requests"),
            backgroundColor: Colors.deepPurpleAccent.shade200
             ),
        ],
        // onTap: (index){
        //   setState(() {
        //     _currentindex = index;
        //   });
        // },
      ));}}
      