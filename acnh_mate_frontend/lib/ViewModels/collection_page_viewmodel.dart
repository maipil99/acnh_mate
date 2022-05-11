import 'package:flutter/material.dart';

import '../Models/fish_model.dart';

class CollectionPageViewModel{
  List<Tab>? tabs;


  List<dynamic> activeList = [];
  List<Bug> listBugs = [];
  List<SeaCritter> listSeaCritters = [];
  List<Fish> listFish = [
    Fish("I am fish", "bitterling.png"),
    Fish("I am also fish", "bitterling.png"),
    Fish("I am another fish", "bitterling.png"),
  ];


  CollectionPageViewModel(){
    activeList = listFish;

    //Setup tabs
    tabs = <Tab>[
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
        activeList = listSeaCritters;
        break;
    }
  }
}


class SeaCritter {
}

class Bug {
}