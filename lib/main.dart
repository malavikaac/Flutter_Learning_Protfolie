import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Sample(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:Color.fromARGB(255, 210, 243, 235),
        title: Row(
          children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            foregroundImage: AssetImage('assets/malavika.jpg')
          ),
          Padding( 
            padding: const EdgeInsets.all(8.0),
            child: Text('Malavika',
            style: TextStyle(
              color: Colors.black87,
              fontSize:20 ,
              fontWeight: FontWeight.w500 ,
              fontStyle: FontStyle.italic
            ),
            ),
          )
        ]),
        actions: [
          TextButton.icon(
            onPressed: () {}, 
            icon: Icon(Icons.send_sharp ),
            label: Text('Contact Me'))
        ],
      ),
    );

  }
}