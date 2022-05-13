import 'dart:convert';

import 'package:flutter/material.dart';

import '../Models/bug_model.dart';
import '../api.dart';
import '../Models/fish_model.dart';
import '../Models/sea_model.dart';

class CollectionPageViewModel {
  List<Tab>? tabs;

  List<dynamic> activeList = [];
  List<Bug> listBugs = [];
  List<Sea> listSeaCritters = [];
  List<Fish> listFish = [];

  CollectionPageViewModel() {
    //Setup tabs
    tabs = <Tab>[
      const Tab(text: 'Fish'),
      const Tab(text: 'Bugs'),
      const Tab(text: 'Sea Critters'),
    ];
  }

  Future<List<dynamic>> fetchFromApi() async {
    print('run');
    var res = await api.fetch("fish");

    List<dynamic> list = json.decode(res.body);


    List<Fish> fishes = [];
    for (var item in list) {
      Fish fish = Fish.fromJson(item);
      fishes.add(fish);
    }
    return fishes;
  }

  tabClick(int index) {
    switch (index) {
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
