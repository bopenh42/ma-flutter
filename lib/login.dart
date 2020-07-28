import 'package:flutter/material.dart';
import 'package:project/content.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/login_logo.png',
                width: 200,
                height: 200,
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32))),
              ),
              Padding(
                padding: EdgeInsets.all(7),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32))),
              ),
              Padding(
                padding: EdgeInsets.all(7),
              ),
              RaisedButton.icon(
                  onPressed: () {
                    // moving page using navigator (without route)
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => content()));

                    // Move page within route
                    Navigator.pushNamed(context, '/content');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  icon: Icon(Icons.lock_open, color: Colors.white),
                  color: Colors.blue,
                  label: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
