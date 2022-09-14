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
            Image.asset('images/photo_2022-08-29_15-13-10.jpg'),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Color.fromARGB(255, 105, 96, 139),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'worroni niiloobbano bikkina qaannanalle',
                  style: TextStyle(
                    color: Color.fromARGB(255, 80, 15, 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Edecha();
                    }),
                  );
                },
                child:
                    const Text('                        Yahode              '),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Builder(builder: (context) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Hurbata();
                      }),
                    );
                  },
                  child: const Text('hadiy wogi hurbatuwa gudish ogoraa'),
                ),
              );
            }),
            const SizedBox(
              height: 50,
            ),
            Builder(builder: (context) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Hurbata();
                      }),
                    );
                  },
                  child: const Text('hadiy wogi hurbatuwa gudish ogoraa'),
                ),
              );
            }),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Idota();
                    }),
                  );
                },
                child: const Text('hadiyi idoti woga'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
