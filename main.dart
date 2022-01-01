/*Flutter_Widget_MaterialApp_Scaffold_FloatingActionButton_ContainerWidget_ContainerAlignment_Padding_Margin*/








import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        /* backgroundColor: Colors.yellow, */
        appBar:
            AppBar(title: const Text('Başlık'), backgroundColor: Colors.black),
        body:
              Center(
                child: Container(
                  
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
                ),
              ),
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
