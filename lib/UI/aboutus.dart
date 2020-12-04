import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text("About Us",style: new TextStyle(fontFamily: "Poppins"),),backgroundColor: Colors.redAccent,shadowColor: Colors.blueGrey),
        body: new Container(
          alignment : Alignment.center,
              child : new ListView(
                children: <Widget>[
                  
                     new Container(margin: const EdgeInsets.fromLTRB(20.0, 70, 20, 0.0),
                 child : new CircleAvatar(
                    backgroundImage : new AssetImage("images/op1.jpeg"),
                    radius: 185.0,
                  ),),
                  new Padding(padding: const EdgeInsets.all(10.0)),
                  new Container(
                   child: new Center(
                         child:  new Text("GARVIT SHARMA",
                          style : new TextStyle(
                      color : Colors.black,
                      fontFamily : "Poppins",
                      fontWeight : FontWeight.bold,
                      fontSize : 30),)
                   ),
                   

                  
                  ),
                  new Padding(padding: new EdgeInsets.all(5.0)),
               
                   new Center(child : new Text("Computer Engineer",
                    style : new TextStyle(
                      color : Colors.blueGrey,
                      fontFamily : "Poppins",
                      fontSize : 18
                    ))),
                        new Center(child : new Text("Thapar Institute of Engineering",
                    style : new TextStyle(
                      color : Colors.blueGrey,
                      fontFamily : "Poppins",
                      fontSize : 18
                    ))),

                    SizedBox(height:10.0 ),
                    new Container(margin: const EdgeInsets.fromLTRB(20.0,70, 20, 0.0),
                 child : new CircleAvatar(
                    backgroundImage : new AssetImage("images/ankuskop.jpeg"),
                    radius: 185.0,
                  ),),
                  new Padding(padding: const EdgeInsets.all(10.0)),
                  new Container(
                   child: new Center(
                         child:  new Text("ANKUSH KUMAR",
                          style : new TextStyle(
                      color : Colors.black,
                      fontFamily : "Poppins",
                      fontWeight : FontWeight.bold,
                      fontSize : 30),)
                   ),
                   

                  
                  ),
                  new Padding(padding: new EdgeInsets.all(5.0)),
               
                   new Center(child : new Text("Computer Engineer",
                    style : new TextStyle(
                      color : Colors.blueGrey,
                      fontFamily : "Poppins",
                      fontSize : 18
                    ))),
                        new Center(child : new Text("Thapar Institute of Engineering",
                    style : new TextStyle(
                      color : Colors.blueGrey,
                      fontFamily : "Poppins",
                      fontSize : 18
                    ))),
                  SizedBox(height:10.0 ),
                      new Container(margin: const EdgeInsets.fromLTRB(20.0, 70, 20, 0.0),
                 child : new CircleAvatar(
                    backgroundImage : new AssetImage("images/bahubalop.jpeg"),
                    radius: 185.0,
                  ),),
                  new Padding(padding: const EdgeInsets.all(10.0)),
                  new Container(
                   child: new Center(
                         child:  new Text("Bahubal Jain",
                          style : new TextStyle(
                      color : Colors.black,
                      fontFamily : "Poppins",
                      fontWeight : FontWeight.bold,
                      fontSize : 30),)
                   ),
                   

                  
                  ),
                  new Padding(padding: new EdgeInsets.all(5.0)),
               
                   new Center(child : new Text("Computer Engineer",
                    style : new TextStyle(
                      color : Colors.blueGrey,
                      fontFamily : "Poppins",
                      fontSize : 18
                    ))),
                        new Center(child : new Text("Thapar Institute of Engineering",
                    style : new TextStyle(
                      color : Colors.blueGrey,
                      fontFamily : "Poppins",
                      fontSize : 18
                    ))),
                ]),
    ));
  }
}