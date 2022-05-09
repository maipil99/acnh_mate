import 'package:acnh_mate_frontend/Widgets/custom_scaffold_widget.dart';
import 'package:acnh_mate_frontend/Widgets/item_row_widget.dart';
import 'package:acnh_mate_frontend/Widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
        pageTitle: "Collections",
        body: Column(
          children: [
            TabBarWidget(),
            ListView(
              shrinkWrap: true,
              children: [
                ItemRowWidget(name: "fish")
              ],
            )],
        ));
  }
}
