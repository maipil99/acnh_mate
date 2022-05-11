import 'package:acnh_mate_frontend/Views/collection_page.dart';
import 'package:acnh_mate_frontend/Views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map routes = {
      "/home": (context) => const HomePage(),
      "/collections": (context) => const CollectionPage(),
    };

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        initialRoute: "/home",
        onGenerateRoute: (settings) {
          if (ModalRoute.of(context)?.settings.name == settings.name) return null; //Check if already on page
          return PageRouteBuilder(
              transitionDuration: Duration.zero,
              settings: settings,
              pageBuilder: (_, __, ___) => routes[settings.name](context));
        });
  }
}
