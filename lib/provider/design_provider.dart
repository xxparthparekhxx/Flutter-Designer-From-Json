import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nirmalacdn/models/design_model.dart';
import 'package:nirmalacdn/models/nvaigation_element.dart';

class DesignProvider extends ChangeNotifier {
  String get ss {
    if (width > 500) {
      return "Rail";
    } else {
      return "Drawer";
    }
  }

  String json = '';
  double width = 0.0;

  DesignProvider(this.width) {
    json = jsonEncode({
      'NavigationType': ss,
      'NavigationElements': [
        {
          'title': "Nirmala",
          'icon': "nirmala",
          'Page': [
            {
              "ComponentType": "Title",
              "Details": {"title": "Parth"}
            },
            {
              "ComponentType": "QuickLinks",
              "Details": {
                "Urls": [
                  'https://www.google.com/',
                  'https://www.linkedin.com/',
                  'https://www.google.com/',
                  'https://www.linkedin.com/',
                ],
                "Details": [
                  "Google",
                  "LinkedIn",
                  "Google",
                  "LinkedIn",
                ]
              }
            },
            {
              "ComponentType": "Title",
              "Details": {"title": "Parth"}
            },
            {
              "ComponentType": "Title",
              "Details": {"title": "Parth"}
            },
          ]
        },
        {
          'title': "About Us",
          'icon': "info",
          'Page': [
            {
              "ComponentType": "Text",
              "Details": {"title": "Parth Parekh"}
            }
          ]
        }
      ]
    });

    fetch();
  }

  void fetch() async {
    await Future.delayed(Duration(microseconds: 1));
    var Data = jsonDecode(json);
    _Design = DesignModel.fromJson(Map<String, dynamic>.from(Data));
    notifyListeners();
  }

  addPage(
      {required String Title,
      required String icon,
      required PageElement page}) {
    _Design!.addPage(NavigationElement(Title: Title, icon: icon, Page: page));
  }

  DesignModel? _Design;

  DesignModel? get Design {
    return _Design;
  }
}
