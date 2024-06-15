import 'dart:math';

import 'package:flutter/material.dart';

void main(){
runApp(MyApp());  
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List friendList = ["kashif","anwar","rafaqat","shariq","owais"];

  addFrirnd(){
    setState(() {
      friendList.add("rahim");
    });
  }

  removeFriend(){
    setState(() {
      friendList.removeLast();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(actions: [Row(
          children: [
            Container(child: ElevatedButton(onPressed: (){addFrirnd();}, child: Text("Add")),margin: EdgeInsets.only(right: 20),),
            ElevatedButton(onPressed: (){removeFriend();}, child: Text("Remove"))            
          ],
          
        ),],),
        body: ListView.builder(
          itemCount: friendList.length,
          itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(bottom: 2),
                child: ListTile(
                  tileColor: Colors.yellow,
                  title: Text(friendList[index]),
                ),
              );
          }
          ),
      ),
    );
  }
}

