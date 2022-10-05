import 'package:flutter/material.dart';
import 'package:beautiful_hadiya/edecha.dart';
import 'package:beautiful_hadiya/hurbata.dart';
import 'package:beautiful_hadiya/idota.dart';

class Culture extends StatefulWidget {
  const Culture({super.key});

  @override
  State<Culture> createState() => _CultureState();
}

class _CultureState extends State<Culture> {
  @override
  Widget build(BuildContext context) {
    var container = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/haddiya21.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(94, 139, 108, 96),
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
            Image.asset('images/haddiya24.jpg'),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: const Color.fromARGB(255, 105, 96, 139),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'we have beautiful culture',
                  style: TextStyle(
                    color: Color.fromARGB(255, 80, 15, 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 60,
              width: 400,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Edecha();
                      }),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(250)))),
                  child: const Text(
                    '                        Yaahoode              ',
                    style: TextStyle(fontSize: 29),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Builder(builder: (context) {
              return SizedBox(
                child: SizedBox(
                  height: 60,
                  width: 600,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const Hurbata();
                          }),
                        );
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(250)))),
                      child: const Text(
                        'The culture Foods of hadiya',
                        style: TextStyle(fontSize: 27),
                      ),
                    ),
                  ),
                ),
              );
            }),
            const SizedBox(
              height: 15,
            ),
            Builder(builder: (context) {
              return SizedBox(
                height: 60,
                width: 400,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Hurbata();
                        }),
                      );
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(250)))),
                    child: const Text(
                      'serrawana',
                      style: TextStyle(fontSize: 29),
                    ),
                  ),
                ),
              );
            }),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 60,
              width: 400,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Idota();
                      }),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(250)))),
                  child: const Text(
                    'haddiyi idooti hechchi qaaniqa',
                    style: TextStyle(fontSize: 29),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
    return container;
  }
}
