import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _img1 =
      'https://images.unsplash.com/photo-1640768239132-4a0c74249b61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        /* backgroundColor: Colors.yellow, */
        appBar:
            AppBar(title: const Text('Başlık'), backgroundColor: Colors.black),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(60),
            child: const Text(
              'Resithan',
              style: TextStyle(fontSize: 60),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.rectangle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60)),
              image: DecorationImage(
                image: NetworkImage(_img1),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(20, -20),
                    blurRadius: 20),
                BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(-20, 20),
                    blurRadius: 30),
              ],
            ),
          ),
        ),
        /*  child: Container(
                  
                  color: Colors.blueGrey,
                  width: 300,
                  height: 300,
                  /* alignment: Alignment.center, */
                  child: Container(
                    alignment: Alignment.center,
                    color:Colors.pink,
                    margin: const EdgeInsets.fromLTRB(45, 45, 45, 45),
                    width: 100,
                    height: 100,
                    child: const Text("TheAnswer"),
                  ),
                ), */

        /* Container(
          color: Colors.red,
          width: 100,
          height: 200,
          child: const Text(
            "ÖMER REŞİTHAN SONSUZ",
            textAlign: TextAlign.center,
          ),
          margin: const EdgeInsets.fromLTRB(10, 20,25, 25),
          padding: EdgeInsets.all(20),
          /* constraints: const BoxConstraints(
              minWidth: 100, minHeight: 100, maxHeight: 200, maxWidth: 200), */
        ), */

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          child: const Icon(
            Icons.map,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
