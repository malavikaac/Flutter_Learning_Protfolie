import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Color.fromARGB(255, 253, 253, 253),
          child: Row(
            children: [
              TextButton(onPressed: (){
              launch('https://facebook.com');
              }, child:Image.asset('assets/facebook.png',
              width: 15,height: 15,)),
              TextButton(onPressed: (){
                 launch('https://instagram.com');
              }, child:Image.asset('assets/instagram.png',
              width: 15,height: 15,)),
              TextButton(onPressed: (){
                 launch('https://twitter.com');
              }, child:Image.asset('assets/twitter.png',
              width: 15,height: 15,))

            ],
          ),
        )],
    );
  }
void _lanchURL(String url) async => await canLaunch(url) ? await launch(url) : throw 
'Could not launch $url';
    
}
