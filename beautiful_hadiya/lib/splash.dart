import 'package:beautiful_hadiya/home.dart';
import 'package:beautiful_hadiya/main.dart';
import 'package:flutter/material.dart';
import 'package:beautiful_hadiya/learn_flutter_page.dart';
import 'colors.dart';
import 'culture.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  get children => null;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/admex.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        //var container = Container();
        child: Scaffold(
          backgroundColor: const Color.fromARGB(94, 139, 108, 96),
          // ignore: unnecessary_new
          body: Container(
            padding: const EdgeInsets.only(top: 250, left: 30, right: 30),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
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
                        return const Rootpage(
                          title: '',
                        );
                      }),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(250))),
                  ),
                  child: const Text(
                    ' go to home ',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ]),
          ),
        ),
      );
}

container({required Color color}) {}
