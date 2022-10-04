import 'package:flutter/material.dart';
import 'package:beautiful_hadiya/conolnel bezabi.dart';
import 'package:beautiful_hadiya/geja_geribo.dart';
import 'package:beautiful_hadiya/prof_beyene_petros.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    var container = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/beyen.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(' The hadiya greatest people of history'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Image.asset('images/beyen.jpg'),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: const Color.fromARGB(255, 96, 130, 139),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'የሃዲያ ትልልቅ ሰዎች ታሪክ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            Builder(builder: (context) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Beyene();
                      }),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(250)))),
                  child: const Text('short History of hadiya'),
                ),
              );
            }),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Colonel();
                      }),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(250)))),
                  child: const Text('colonel bezabi petros'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Geja();
                    }),
                  );
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(250)))),
                child: const Text('general geja garibo'),
              ),
            ),
          ]),
        ),
      ),
    );
    return container;
  }
}
