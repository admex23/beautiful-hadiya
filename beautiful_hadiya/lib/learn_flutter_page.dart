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
    return Scaffold(
      appBar: AppBar(
        title: const Text(' The hadiya greatest people history'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/taye2.jpg'),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Color.fromARGB(255, 96, 130, 139),
              width: double.infinity,
              child: Center(
                child: const Text(
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
                  child: const Text('short History of hadiya'),
                ),
              );
            }),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Colonel();
                    }),
                  );
                },
                child: const Text('colonel bezabi petros'),
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
                child: const Text('general geja garibo'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
