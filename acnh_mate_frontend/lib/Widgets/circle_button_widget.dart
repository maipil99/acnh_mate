import 'package:flutter/material.dart';

class CircleButtonWidget extends StatefulWidget {
  CircleButtonWidget({Key? key, required String this.iconImage}) : super(key: key);
  String iconImage = "fossil.png";

  @override
  _CircleButtonWidgetState createState() => _CircleButtonWidgetState();
}

class _CircleButtonWidgetState extends State<CircleButtonWidget> {
  bool iconPress = false;


  @override
  Widget build(BuildContext context) {
   return CircleAvatar(
      radius: 25,
      backgroundColor: iconPress ? Colors.blue : Colors.white,
      child: IconButton(
        onPressed: () {
          print(iconPress);
          setState(() {
            iconPress = !iconPress;
          });
        },
        icon: Image.asset("assets/button_icons/" + widget.iconImage),
        color: Colors.blue,
      ),
    );
  }
}
