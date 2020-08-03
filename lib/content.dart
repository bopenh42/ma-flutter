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
            proTemplate(1, 'images/iphone.png', "iPhone", "Iphone World Apple",
                "12xx.00"),
            proTemplate(2, 'images/samsung.png', "Samsung",
                "Samsung is the legendary of hardware", "1000.00"),
            proTemplate(3, 'images/Nokia.png', "Nokia",
                "Nokia was a king of cell phone", "200.00"),
            proTemplate(4, 'images/Hauwei.png', "Hauwei",
                "Hauwei id a king of camera smartphone", "900.00"),
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
