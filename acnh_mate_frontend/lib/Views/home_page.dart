import 'package:acnh_mate_frontend/Widgets/custom_scaffold_widget.dart';
import 'package:acnh_mate_frontend/Widgets/drawer_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      pageTitle: "Home Page",
      body: Text("hello"),
    );
  }
}
