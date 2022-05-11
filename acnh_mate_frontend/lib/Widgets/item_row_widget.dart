import 'package:flutter/material.dart';
import '../Common/enums.dart';

class ItemRowWidget extends StatelessWidget {
  String image;
  String firstIcon = "";
  String secondIcon = "owl.png";
  String name;
  CollectionsCategory category;

  ItemRowWidget(this.image,this.name,this.category){
    switch(category){
      case CollectionsCategory.fish:
        firstIcon = 'fishing_net.png';
        break;
      case CollectionsCategory.bugs:
        firstIcon = 'acorn.png';
        break;
      case CollectionsCategory.seaCritters:
        firstIcon = 'leaf.png';
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          Image.asset("assets/icons/" + image, height: 50),
          Text(name),
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
    );
  }
}
