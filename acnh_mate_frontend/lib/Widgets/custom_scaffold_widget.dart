import 'package:acnh_mate_frontend/Widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';

import 'drawer_button.dart';

class CustomScaffoldWidget extends StatelessWidget {
  const CustomScaffoldWidget({Key? key, required String this.pageTitle, required this.body}) : super(key: key);
  final pageTitle;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(pageTitle),

        ),
        drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                    child: DrawerButton(
                      text: "Collections",
                      onPressed: () => Navigator.pushNamed(context, "/collections"),
                    )),
              ],
            )),
        body: body);
  }
}
