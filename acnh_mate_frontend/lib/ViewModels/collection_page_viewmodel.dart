import 'dart:convert';

import 'package:acnh_mate_frontend/Common/enums.dart';
import 'package:flutter/material.dart';

import '../Models/bug_model.dart';
import '../api.dart';
import '../Models/fish_model.dart';
import '../Models/sea_model.dart';

class CollectionPageViewModel {
  //Ensure singleton
  CollectionPageViewModel._privateConstructor();
  static final CollectionPageViewModel instance = CollectionPageViewModel._privateConstructor();

  List<Tab>? tabs;

  List<Bug> listBugs = [];
  List<Sea> listSeaCritters = [];
  List<Fish> listFish = [];
  CollectionsCategory category = CollectionsCategory.fish;

  CollectionPageViewModel() {
    //Setup tabs
    tabs = <Tab>[
      const Tab(text: 'Fish'),
      const Tab(text: 'Bugs'),
      const Tab(text: 'Sea Critters'),
    ];
  }

  Future<List<dynamic>> fetchFromApi() async {
    switch(category){
      case CollectionsCategory.fish:
        if(listFish.isNotEmpty) return listFish; //Guard clause

        var res = await api.fetch("fish");
        Iterable l = json.decode(res.body);
        listFish = List<Fish>.from(l.map((model)=> Fish.fromJson(model)));
        return listFish;
      case CollectionsCategory.bugs:
        if(listBugs.isNotEmpty) return listBugs; //Guard clause

        var res = await api.fetch("bugs");
        Iterable l = json.decode(res.body);
        listBugs = List<Bug>.from(l.map((model)=> Bug.fromJson(model)));
        return listBugs;
      case CollectionsCategory.seaCritters:
        if(listSeaCritters.isNotEmpty) return listSeaCritters; //Guard clause

        var res = await api.fetch("sea");
        Iterable l = json.decode(res.body);
        listSeaCritters = List<Sea>.from(l.map((model)=> Sea.fromJson(model)));
        return listSeaCritters;
    }
  }

  tabClick(int index) {
    switch (index) {
      case 0:
        category = CollectionsCategory.fish;
        break;
      case 1:
        category = CollectionsCategory.bugs;
        break;
      case 2:
        category = CollectionsCategory.seaCritters;
        break;
    }
  }
}
