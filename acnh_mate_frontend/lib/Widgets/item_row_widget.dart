import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemRowWidget extends StatelessWidget {
  var itemIcon;
  String name;
  var recipeIcon;

  ItemRowWidget({Key? key, this.itemIcon, required  this.name}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          Text(name),
          const Icon(Icons.directions),
          const Spacer(),
          IconButton(onPressed:  (){}, icon: const Icon(Icons.volume_down)),

        ],
      ),
    );
  }
}
