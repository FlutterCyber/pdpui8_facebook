import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "facebook",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.blueAccent),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.grey[800],
            onPressed: () {
              print("sfgsf");
            },
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            color: Colors.grey[800],
            onPressed: () {
              print("sfgsf");
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          //post create
          Container(
            height: 120,
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                //search qismi
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/user_5.jpeg"),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey[500]!,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
