import 'dart:io';

import 'package:flutter/material.dart';
import '../../screen/home_screen.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  var _userEmail = '';
  var _password = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    key: ValueKey("email"),
                    validator: (value) {
                      if (value.isEmpty || !value.contains("@")) {
                        return "Please enter a valid email address.";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Input your Email"),
                    onSaved: (value) {
                      _userEmail = value;
                    },
                  ),
                  TextFormField(
                    key: ValueKey("password"),
                    validator: (value) {
                      if (value.isEmpty || value.length < 7) {
                        return "password must be at least 7 characters long.";
                      }
                      return null;
                    },
                    decoration:
                        InputDecoration(labelText: "Input your Password"),
                    onSaved: (value) {
                      _password = value;
                    },
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  RaisedButton(
                    child: Text("LogIn"),
                    onPressed: _submit,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    // Navigator.of(context)
    //     .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
    if (_userEmail == "dev@dev.com") {
      if (_password == "123445678") {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('wrong password'),
        ));
      }
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('wrong email'),
      ));
    }
  }
}
