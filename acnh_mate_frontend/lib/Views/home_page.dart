import 'package:acnh_mate_frontend/Widgets/circle_button_widget.dart';
import 'package:flutter/material.dart';

import '../Widgets/scaffold_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> iconPress = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      pageTitle: "Home Page",
      body: Column(
        children: [
          Card(
            elevation: 4.0,
            child: Column(
              children: [
                const ListTile(
                  title: Text("Fossils"),
                  subtitle: Text("Collect fossils everyday"),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    CircleButtonWidget(iconImage: "fossil.png"),
                    CircleButtonWidget(iconImage: "fossil.png"),
                    CircleButtonWidget(iconImage: "fossil.png"),
                    CircleButtonWidget(iconImage: "fossil.png"),
                    CircleButtonWidget(iconImage: "fossil.png"),],
                )],
            ),
          ),
          Card(
            elevation: 4.0,
            child: Column(
              children: [
                const ListTile(
                  title: Text("Fossils"),
                  subtitle: Text("Collect fossils everyday"),
                ),
                ButtonBar(alignment: MainAxisAlignment.end, children: [
                  CircleButtonWidget(iconImage: "fox.png"),
                  CircleButtonWidget(iconImage: "fox.png"),
                  CircleButtonWidget(iconImage: "fox.png"),
                  CircleButtonWidget(iconImage: "fox.png"),
                  CircleButtonWidget(iconImage: "fox.png"),
                ]),
                ButtonBar(alignment: MainAxisAlignment.end, children: [
                  CircleButtonWidget(iconImage: "fox.png"),
                  CircleButtonWidget(iconImage: "fox.png"),
                  CircleButtonWidget(iconImage: "fox.png"),
                  CircleButtonWidget(iconImage: "fox.png"),
                  CircleButtonWidget(iconImage: "fox.png"),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
