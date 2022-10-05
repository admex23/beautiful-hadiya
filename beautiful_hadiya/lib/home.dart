import 'package:flutter/material.dart';
import 'package:beautiful_hadiya/learn_flutter_page.dart';
import 'colors.dart';
import 'culture.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  get children => null;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/haddiya01.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        //var container = Container();
        child: Scaffold(
          backgroundColor: const Color.fromARGB(94, 139, 108, 96),
          // ignore: unnecessary_new
          body: Container(
            padding: const EdgeInsets.only(top: 250, left: 30, right: 30),
            child: Column(children: [
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 70,
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const History();
                      }),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(250))),
                  ),
                  child: const Text(
                    '  ❤️ ❤️  History ❤️ ❤️       ',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 70,
                width: 280,
                // margin:
                //     const EdgeInsets.only(right: 70, bottom: 150, left: 70),
                // color: Colors.black,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Culture();
                      }),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(250)))),
                  child: const Text(
                    '      ☘️ ☘️ culture ☘️ ☘️             ',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ]),
          ),
        ),
      );
}

container({required Color color}) {}
