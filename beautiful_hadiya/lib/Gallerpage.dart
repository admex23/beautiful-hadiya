import 'package:flutter/material.dart';
//  Implement this library.import 'package:flutter/material.dart';

class Gallerypage extends StatelessWidget {
  const Gallerypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 139, 117, 96),
        body: OverflowBox(
            maxWidth: MediaQuery.of(context).size.width,
            child: Container(
              padding: const EdgeInsets.only(top: 57, left: 27),
              child: Column(children: [
                Image.asset('images/haddiya0.jpg'),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: const [
                    Text(
                      ' Developer :- adimasu edilu'
                      ''
                      '',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ]),
            )));
  }
}
