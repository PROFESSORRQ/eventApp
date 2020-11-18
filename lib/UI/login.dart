import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
const users = const {
  'garvit@thapar.edu': '12345',
  'ankush@thapar.edu': 'chutiya',
};
Duration get loginTime => Duration(milliseconds: 2250);

Future<String> _recoverPassword(String name) {
  print('Name: $name');
  return Future.delayed(loginTime).then((_) {
    if (!users.containsKey(name)) {
      return 'Username not exists';
    }
    return null;
  });
}
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
        title: 'Events Notifier',
        logo: 'images/thapar.png',
        onLogin: (_) => Future(null),
    onSignup: (_) => Future(null),
    onSubmitAnimationCompleted: () {
//    Navigator.of(context).pushReplacement(MaterialPageRoute(
//    builder: (context) =>
  //  ));
    },
    onRecoverPassword: _recoverPassword,);
  }
}
