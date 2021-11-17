// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:session_4/chats.dart';

class HomeScreen extends StatelessWidget {

  bool check = false;

  List<Map<String, String>> names = [
    {
      "name": "Nader Mohamed",
      "subTitle": "Mohamed send message",
      "image": "assets/images/person1.png",
      "age": "23",
      "time": "2.30 pm",
    },
    {
      "name": "Ahmed Mohamed",
      "subTitle": "Ali send Fav",
      "image": "assets/images/person2.png",
      "age": "23",
      "time": "9.30 pm",
    },
    {
      "name": "mahmoud Mohamed",
      "subTitle": "Nader send like",
      "image": "assets/images/person3.png",
      "age": "23",
      "time": "1.30 pm",
    },
    {
      "name": "Mohamed Mohamed",
      "subTitle": "Ahmed send ......",
      "image": "assets/images/person1.png",
      "age": "23",
      "time": "2.30 pm",
    },
    {
      "name": "Mohamed Mohamed",
      "subTitle": "Ahmed send ......",
      "image": "assets/images/person3.png",
      "age": "23",
      "time": "3.50 pm",
    },
    {
      "name": "Mohamed Mohamed",
      "subTitle": "Ahmed send ......",
      "image": "assets/images/person2.png",
      "age": "23",
      "time": "5.00 pm",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "Course Flutter",
            style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontFamily: "Cairo",
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,


          bottom: TabBar(
            tabs: const [
              Tab(
               icon: Icon(Icons.camera_alt_outlined),
              ),

              Tab(
                text: "CHATS",
              ),

              Tab(
                text: "STATUS",
              ),

              Tab(
                text: "CALLS",
              ),
            ]),
        ),

        /// drawer
        drawer: Container(
          width: MediaQuery.of(context).size.width*0.7,
          color: Colors.teal,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ListTile(
                    title: Text("Nader Mohamed",style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.bold
                        )),
                    subtitle: Text("Nader Mohamed send message .......",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.bold
                    )),
                    leading: Image.asset(
                      "assets/icons/google.png",
                      width: 35,
                      height: 35,
                    ),
                    trailing: Text("2.30 PM",style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.bold
                    )),
                    onTap: (){
                      print("Nader mohamed");
                    },
                  ),
                ),

              SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",
                  style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                  )),
              ),


              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",
                  style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                  )),
              ),


              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",
                  style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                  )),
              ),


              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",
                  style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                  )),
              ),
            ],
          ),
        ),

        /// endDrawer
        // endDrawer: Container(
        //   width: MediaQuery.of(context).size.width*0.7,
        //   color: Colors.teal,
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(top: 40),
        //         child: ListTile(
        //           title: Text("Nader Mohamed",style: TextStyle(
        //               color: Colors.black,
        //               fontSize: 14,
        //               fontFamily: "Cairo",
        //               fontWeight: FontWeight.bold
        //           )),
        //           subtitle: Text("Nader Mohamed send message .......",style: TextStyle(
        //               color: Colors.grey,
        //               fontSize: 10,
        //               fontFamily: "Cairo",
        //               fontWeight: FontWeight.bold
        //           )),
        //           leading: Image.asset(
        //             "assets/icons/google.png",
        //             width: 35,
        //             height: 35,
        //           ),
        //           trailing: Text("2.30 PM",style: TextStyle(
        //               color: Colors.black54,
        //               fontSize: 16,
        //               fontFamily: "Cairo",
        //               fontWeight: FontWeight.bold
        //           )),
        //           onTap: (){
        //             print("Nader mohamed");
        //           },
        //         ),
        //       ),
        //
        //       SizedBox(
        //         height: MediaQuery.of(context).size.height*0.1,
        //       ),
        //
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text("Home",
        //             style: TextStyle(fontSize: 15,
        //               fontWeight: FontWeight.bold,
        //             )),
        //       ),
        //
        //
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text("Home",
        //             style: TextStyle(fontSize: 15,
        //               fontWeight: FontWeight.bold,
        //             )),
        //       ),
        //
        //
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text("Home",
        //             style: TextStyle(fontSize: 15,
        //               fontWeight: FontWeight.bold,
        //             )),
        //       ),
        //
        //
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text("Home",
        //             style: TextStyle(fontSize: 15,
        //               fontWeight: FontWeight.bold,
        //             )),
        //       ),
        //     ],
        //   ),
        // ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
           check = false;
          },
          child: Icon(Icons.call)
        ),

       /// floatingActionButton with widget
        // floatingActionButton: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     width: double.infinity,
          //     height: 50,
          //     decoration: BoxDecoration(
          //       color: Colors.red,
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //     child: Center(
          //       child: Text("Apply"),
          //     ),
          //   ),
          // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        body: TabBarView(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,
            ),

            ChatsBody(),

            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.red,
            ),

            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.yellow,
            ),
          ])


       ///widget Stack
        // Stack(
        //     children: [
        //       Container(
        //         width: 200,
        //         height: 200,
        //         color: Colors.red,
        //       ),
        //
        //       Container(
        //         width: 200,
        //         height: 200,
        //         child: Center(
        //           child: Container(
        //             width: 100,
        //             height: 100,
        //             color: Colors.teal,
        //           ),
        //         ),
        //       ),
        //
        //
        //       Container(
        //         width: 200,
        //         height: 200,
        //         child: Center(
        //           child: Container(
        //             width: 50,
        //             height: 50,
        //             color: Colors.yellow,
        //           ),
        //         ),
        //       ),
        //
        //
        //
        //     ],
        //   )
      ),
    );
  }
}