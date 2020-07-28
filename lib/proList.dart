// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class proTemplate extends StatelessWidget {
  proTemplate(this.id, this.image, this.name, this.description, this.price);
  final int id;
  final String image;
  final String name;
  final String description;
  final String price;
  Map proDic;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        proDic = {
          id: [image, name, description, price]
        };
        // Navigator.pushNamed(context, '/');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => productDeatil(
                      proDic: proDic,
                    )));
        print("Name:" + name);
      },
      child: Container(
        child: Card(
            child: Row(
          children: <Widget>[
            InkWell(
              child: Container(
                child: Text(""),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  this.image,
                  width: 90,
                  height: 90,
                )),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(this.description),
                    SizedBox(
                      height: 10,
                    ),
                    Text(this.price)
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
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

class productDeatil extends StatelessWidget {
  final proDic;
  productDeatil({@required this.proDic});
  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    List product = proDic.values.elementAt(0);
    var description = Container(
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(product[2],
              textAlign: TextAlign.left,
              style: TextStyle(
                decorationStyle: TextDecorationStyle.solid,
                height: 1.5,
                color: Color(0xFF6F8398),
              )),
        ),
        padding: EdgeInsets.all(16));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product[1],
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueGrey)),
              width: 400,
              child: Image.asset(product[0]),
            ),

            description, //This
            // should be a paged
            // view.
            // Positioned(child: appBar(),top: 0,),
            // Positioned(
            //   child: FloatingActionButton(
            //       elevation: 2,
            //       child: Image.asset(
            //         product[0],
            //         width: 3,
            //         height: 3,
            //       ),
            //       backgroundColor: Colors.white),
            //   bottom: 0,
            //   right: 20,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Price",
                  style: TextStyle(fontSize: 20),
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        product[3] + ' USD',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.indigo),
                      ),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.red, shape: BoxShape.circle),
                    //   width: 30,
                    //   height: 30,
                    //   margin: EdgeInsets.all(5),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.green, shape: BoxShape.circle),
                    //   width: 30,
                    //   height: 30,
                    //   margin: EdgeInsets.all(5),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.yellow, shape: BoxShape.circle),
                    //   width: 30,
                    //   height: 30,
                    //   margin: EdgeInsets.all(5),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.pink, shape: BoxShape.circle),
                    //   width: 30,
                    //   height: 30,
                    //   margin: EdgeInsets.all(5),
                    // ),
                  ],
                )
              ],
            ),
            // Column(
            //   children: <Widget>[
            //     Text("Size"),
            //     Text(
            //       "10.1",
            //       style: TextStyle(
            //           fontSize: 18,
            //           font Weight: FontWeight.bold,
            //           color: Color(0xFF2F2F3E)),
            //     )
            //   ],
            // )
          ],
        ),

        //   padding: EdgeInsets.all(20),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Image.asset(
        //         product[0],
        //         width: 200,
        //       )
        //     ],
        //   ),
        //   // child: Image.asset(),
      ),
    );
  }
}
