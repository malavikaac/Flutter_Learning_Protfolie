import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_button.dart';

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'Static Random Image',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/seed/picsum/400/300'
    },
    {
      'title': 'Flutter 2.0 Course',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/237/400/300'
    },
    {
      'title': 'Specific Image',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
  ];
  Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Opacity(
                            opacity: 0.5,
                            child: Image.asset('assets/girl.jpg')),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'I\'m Malavika. \nA Software Developer \n and Flutter Dev',
                                style: TextStyle(
                                  fontSize: 40.5,
                                  color: Colors.black,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 130, 0),
                                  child: ContactButton(
                                    buttonText: 'Drop me a Line',
                                    icon: const Icon(Icons.mail_outline),
                                    onPressed: () {
                                      launch('https://mail.google.com');
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'My Projects',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 23),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: projectsList.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.work),
                                title: Text(projectsList[index]['title']!),
                                subtitle:
                                    Text(projectsList[index]['subtitle']!),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Image.network(
                                    projectsList[index]['image']!),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ))
      ],
    );
  }
}
