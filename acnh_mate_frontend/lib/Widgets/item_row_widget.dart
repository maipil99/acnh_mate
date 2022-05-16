import 'package:flutter/material.dart';
import '../Common/enums.dart';

class ItemRowWidget extends StatelessWidget {
  dynamic item;

  final String firstIcon = "owl.png";
  final String secondIcon = "owl.png";
  final CollectionsCategory category = CollectionsCategory.fish;

  ItemRowWidget(this.item, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/collections_item', arguments: {'item': item},),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border(
              bottom: BorderSide(
                color: Colors.blue,
                width: 2),

            )),
        child: Row(
          children: <Widget>[
            Image.network(item.iconUri, height: 50),
            Text(item.name.nameUSen),
            const Spacer(),
            IconButton(
                onPressed: () => {},
                icon:
                    Image.asset("assets/button_icons/" + firstIcon, height: 30)),
            IconButton(
                onPressed: () => {}, //do things
                icon:
                    Image.asset("assets/button_icons/" + secondIcon, height: 30)),
          ],
        ),
      ),
    );
  }
}
