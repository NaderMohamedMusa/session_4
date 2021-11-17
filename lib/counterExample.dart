// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class CounterExample extends StatefulWidget {
  @override
  State<CounterExample> createState() => _CounterExampleState();
}
class _CounterExampleState extends State<CounterExample> {
  int counter = 0;
  int i = 0;
  int j = 0;

  @override
  void initState() {
    super.initState();
    print("j ====>>>${j++}");
  }

  @override
  Widget build(BuildContext context) {
    print("i ====>>>${i++}");
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.minimize,size: 30,),
                onPressed: (){
                  counter--;
                  print(counter);
                  setState(() {});

                },),

              Text("$counter",
              style: TextStyle(fontSize: 25),),

              IconButton(
                icon: Icon(Icons.add,size: 30,),
                onPressed: (){
                  setState(() {
                    counter++;
                    print(counter);
                  });
                },),

            ],
          )
        ],
      ),
    );
  }
}