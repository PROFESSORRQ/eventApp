import 'package:eventApp/views/FacultyView.dart';
import 'package:flutter/material.dart';
final _formKey = GlobalKey<FormState>();
class LoginFaculty extends StatelessWidget {
   final TextEditingController _passcontroller = new TextEditingController();
  final TextEditingController _namecontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height : MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.purple.shade800, Colors.purple.shade200]
          )
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new SizedBox(height: MediaQuery.of(context).size.height*0.2,),
               new Container(
                 alignment: Alignment.center,
                 height: 150,
                 width: 150,
                 child: new Image.asset("images/thapar.png",
                 height: 125,
                   width: 125,
                   fit: BoxFit.fill
                 ),
               ),
              new SizedBox(height: 20.000,),
                Center(
                  child: new Text("LOGIN AS FACULTY",
                  style: new TextStyle(fontSize: 25, decoration: TextDecoration.underline, color: Colors.white, fontFamily: "Poppins",))
                ),

               new SizedBox(height: 8.0,),
               new Text("Enter your Email and Password to proceed",
               style: new TextStyle(
                 color: Colors.white,
                 fontSize: 12.0,


               ),),
              new SizedBox(height: 10.0,),
              new Container(
                height: MediaQuery.of(context).size.height*0.31,
                width: MediaQuery.of(context).size.width*0.9,
                child: Column(
             children:[ Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width*0.85,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                    color: Colors.transparent,
                  border: Border.all(
                    color: Colors.white,
                    width: 0.5
                  )
                ),
                child: Row(
                  children:[
                    new CircleAvatar(
                      radius: 25.00,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.supervised_user_circle, color: Colors.purpleAccent,),
                    ),
                    Expanded(
                      child: new TextFormField(
                        textAlign: TextAlign.center,
                      controller: _namecontroller,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 20,
                            color: Colors.white,
                            fontFamily: "Poppins"
                        ),
                        contentPadding: EdgeInsets.fromLTRB(70, 0.0, 100, 0.0)

                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                  ),
                    ),]
                ),
              ),
              SizedBox(height: 15.0,),
              Container(

                height: 50.0,
                width: MediaQuery.of(context).size.width*0.85,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.transparent,
                    border: Border.all(
                        color: Colors.white,
                        width: 0.5
                    )
                ),
                child: Row(
                  children: <Widget>[
                    new CircleAvatar(
                      radius: 25.00,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.lock, color: Colors.purpleAccent,),
                    ),
                    Expanded(
                      child: new TextFormField(
                        textAlign: TextAlign.center,
                        controller: _passcontroller,
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                            labelText: "Password",
                            labelStyle: TextStyle(
                                fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: "Poppins"
                            ),
                            contentPadding: EdgeInsets.fromLTRB(67, 0.0, 100, 0.0)
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),

              new SizedBox(height: 15.000,),
              SizedBox(
                height: 50.0,
                width: MediaQuery.of(context).size.width*0.85,
                child: new RaisedButton(onPressed: (){
            
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> FacultyView()
                  
                  ));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),

                ),

                child: new Text("PROCEED", style: new TextStyle(
                  fontSize: 20,
                  color: Colors.purpleAccent,
                 fontFamily : "Poppins"
                ),),
                color: Colors.white,),
              ),
              new SizedBox(height: 20.0,),
             ])),
            ])))));
  }
}