import 'package:flutter/material.dart';
import 'package:beautiful_hadiya/learn_flutter_page.dart';
import 'colors.dart';
import 'culture.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  get children => null;

  @override
  Widget build(BuildContext context) {
    //var container = Container();
    return Scaffold(
      backgroundColor: Color.fromARGB(94, 139, 108, 96),
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(children: [
          Image.asset('images/taye.jpg'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const History();
                  }),
                );
              },
              child: const Text(
                  '     ❤️   ❤️             History    ❤️  ❤️       ')),
          Flexible(
            child: Container(
              height: 50,
              width: 300,
              margin: const EdgeInsets.only(right: 70, bottom: 150, left: 70),
              color: Colors.black,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Culture();
                    }),
                  );
                },
                child:
                    Text('                   ☘️ ☘️ culture ☘️ ☘️             '),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  container({required Color color}) {}
}
