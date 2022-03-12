// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:nirmalacdn/engine/parsers/component_type_parser.dart';
import 'package:nirmalacdn/engine/parsers/navt_parser.dart';
import 'package:nirmalacdn/models/nvaigation_element.dart';

enum NavT { Rail, Drawer, BottomNavigation, TabBar }

class DesignModel with ChangeNotifier {
  NavT NavigationType;
  List<NavigationElement> NavigationElements;
  DesignModel({required this.NavigationType, required this.NavigationElements});

  addPage(NavigationElement page) {
    NavigationElements.add(page);
    notifyListeners();
  }

  static fromJson(Map<String, dynamic> Data) {
    String NavType = Data['NavigationType'] as String;

    List<NavigationElement> NavElements = [];

    for (var e in Data['NavigationElements']) {
      List<Component> items = [];

      for (var f in e['Page']) {
        items.add(Component(
            ComponentType: CompTypeParser(f['ComponentType']),
            Details: f['Details']));
      }

      NavElements.add(NavigationElement(
          Title: e['title'], icon: e['icon'], Page: PageElement(Items: items)));
    }

    return DesignModel(
        NavigationType: navT_Parser(NavType), NavigationElements: NavElements);
  }
}
