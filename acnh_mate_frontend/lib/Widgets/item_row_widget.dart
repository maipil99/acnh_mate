import 'package:flutter/material.dart';

class ItemRowWidget extends StatelessWidget {
  String image;
  String firstIcon;
  String secondIcon;
  String name;

  ItemRowWidget(
      {Key? key,
      required this.image,
      required this.name,
      required this.firstIcon,
      required this.secondIcon})
      : super(key: key);

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
