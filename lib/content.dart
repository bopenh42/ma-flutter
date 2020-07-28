import 'package:flutter/material.dart';
import 'package:project/proList.dart';

class content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Content"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            proTemplate(1, 'images/login_logo.png', "iPhone",
                "Iphone World Apple", "12xx.00"),
            proTemplate(2, 'images/login_logo.png', "Samsung",
                "Iphone World Apple", "12xx.00"),
            proTemplate(3, 'images/login_logo.png', "Nokia",
                "Iphone World Apple", "12xx.00"),
            proTemplate(4, 'images/login_logo.png', "Hauwei",
                "Iphone World Apple", "12xx.00"),
          ],
        ));
  }
}

// List view

// body: ListView(
//           children: [
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text("Email"),
//             ),
//             Divider(
//               thickness: 1,
//             ),
//             ListTile(
//               leading: Icon(Icons.phone),
//               title: Text("Phone"),
//             ),
//           ],
//         )
