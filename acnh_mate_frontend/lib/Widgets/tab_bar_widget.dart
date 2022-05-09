import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 3,
        child: TabBar(
          labelColor: Colors.blue,
            tabs: [
              Tab(text: "Fish"),
              Tab(text: "Art"),
              Tab(text: "Fossils")
            ]
        )
    );
  }
}
