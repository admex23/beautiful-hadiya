import 'package:beautiful_hadiya/splash.dart';
import 'package:flutter/material.dart';
import 'package:beautiful_hadiya/home.dart';
import 'package:beautiful_hadiya/profile_page.dart';
import 'package:beautiful_hadiya/Gallerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.brown),
        home: const Splash());
  }
}

class Rootpage extends StatefulWidget {
  const Rootpage({super.key, required this.title});
  final String title;

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int currentpage = 0;
  var indexx = 0;
  List<Widget> pages = [const Homepage(), Profilepage(), const Gallerypage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Beautiful Hadiya 🤍🤍🖤🖤❤️❤️'),
      ),
      body: Container(child: pages[currentpage]),
      bottomNavigationBar: NavigationBar(
          selectedIndex: indexx,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.link_rounded), label: 'Gallery'),
            NavigationDestination(icon: Icon(Icons.person), label: 'About'),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              indexx = index;
              currentpage = index;
            });
          }),
    );
  }
}
