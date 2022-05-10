import 'package:acnh_mate_frontend/Widgets/item_row_widget.dart';
import 'package:flutter/material.dart';

import '../Models/fish_model.dart';

class CollectionPageViewModel{
  List<ItemRowWidget> activeList = [];

  List<ItemRowWidget> listFish = [
    ItemRowWidget(image: "bitterling.png", name: "I am fish", firstIcon: "fishing_net.png", secondIcon: "owl.png"),
    ItemRowWidget(image: "bitterling.png", name: "I am also fish", firstIcon: "fishing_net.png", secondIcon: "owl.png"),
    ItemRowWidget(image: "bitterling.png", name: "I am another fish", firstIcon: "fishing_net.png", secondIcon: "owl.png"),
  ];
  List<ItemRowWidget> listBugs = [

  ];




  List<Tab>? myTabs;

  CollectionPageViewModel(){
    activeList = listFish;
    myTabs = <Tab>[
      const Tab(text: 'Fish'),
      const Tab(text: 'Bugs'),
      const Tab(text: 'Sea Critters'),
    ];


  }
  
  tabClick(int index){
    switch(index){
      case 0:
        activeList = listFish;

        break;
      case 1:
        activeList = listBugs;
        break;
      case 2:
      //
        break;
    }
    print(index.toString());
  }
}