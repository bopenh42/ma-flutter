import 'package:flutter/rendering.dart';
import 'package:project/content.dart';

import './screen/auth_screen.dart';
import 'package:flutter/material.dart';

import 'login.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MaterialApp(
      // home: LoginPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/content': (context) => content()
      },
    ));

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.

// }

// title: 'FlutterChat',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         backgroundColor: Colors.blue,
//         accentColor: Colors.deepPurple,
//         accentColorBrightness: Brightness.dark,
//         buttonTheme: ButtonTheme.of(context).copyWith(
//           buttonColor: Colors.blue,
//           textTheme: ButtonTextTheme.primary,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(32),
//           ),
//         ),
//       ),
//       home: AuthScreen(),
