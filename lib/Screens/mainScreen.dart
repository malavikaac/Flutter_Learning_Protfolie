import 'package:flutter/material.dart';
import '../widgets/Button_row.dart';
import '../widgets/body.dart';
import '../widgets/contact_button.dart';

class MainScreen extends StatelessWidget {
  MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        //appbarcolor
        title: Row(children: [
          CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              foregroundImage: AssetImage('assets/malavika.jpg')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Malavika',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
            ),
          )
        ]),
        actions: [
          ContactButton(
            buttonText: 'Contact Me',
            icon: Icon(Icons.send_sharp),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: [
          Body(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: SizedBox(
                height: 59,
                child: ButtonRow()),
            ))
        ],
      ),
    );
  }
}
