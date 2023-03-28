import 'package:flutter/material.dart';
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
              TextButton(onPressed: (){}, child:Image.asset('assets/facebook.png',
              width: 15,height: 15,)),
              TextButton(onPressed: (){}, child:Image.asset('assets/instagram.png',
              width: 15,height: 15,)),
              TextButton(onPressed: (){}, child:Image.asset('assets/twitter.png',
              width: 15,height: 15,))

            ],
          ),
        )],
    );
  }
}
