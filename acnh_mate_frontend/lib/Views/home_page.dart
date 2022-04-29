import 'package:acnh_mate_frontend/Widgets/drawer_button.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Home Page"),
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: drawer_button(
              text: "Museum",
              onPressed: () {},
            )),
          ],
        )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Hello"),
          ],
        ));
  }
}
