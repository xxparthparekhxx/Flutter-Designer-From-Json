import 'package:flutter/material.dart';
import 'package:nirmalacdn/models/design_model.dart';
import 'package:nirmalacdn/screens/drawer_navigator.dart';
import 'package:nirmalacdn/screens/rail_navigator.dart';

class Engine extends StatefulWidget {
  const Engine({Key? key, required this.Design_data}) : super(key: key);

  final DesignModel Design_data;

  @override
  State<Engine> createState() => _EngineState();
}

class _EngineState extends State<Engine> {
  int index = 0;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.Design_data.NavigationType) {
      case NavT.Rail:
        return RailNavigator(elements: widget.Design_data.NavigationElements);

      case NavT.Drawer:
        return DrawerNavigator(elements: widget.Design_data.NavigationElements);

      default:
        return const Scaffold(); //error screen
    }
  }
}
