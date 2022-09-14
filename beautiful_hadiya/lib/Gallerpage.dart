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
          padding: const EdgeInsets.only(top: 25, left: 15),
          child: Container(
            padding: const EdgeInsets.only(top: 57, left: 27),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'adimasu edilu',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SingleChildScrollView(),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(right: 10, bottom: 40, left: 0),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/1661081829824.jpg'),
                      //fit: BoxFit.fill),
                    ),
                  ),
                  child: Row(
                    children: [Image.asset('assets/taye2.jpg')],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
