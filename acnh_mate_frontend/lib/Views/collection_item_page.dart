import 'package:flutter/material.dart';

import '../Models/fish_model.dart';
import '../Models/name.dart';
import '../Widgets/scaffold_widget.dart';

class CollectionItemPage extends StatelessWidget {

  CollectionItemPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    var item = arguments['item'];
    return ScaffoldWidget(
      pageTitle: item.name!.nameUSen!,
      body: Card(
        child: Text(item.name!.nameUSen!),
      ),
    );
  }
}
