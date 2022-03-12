import 'package:flutter/material.dart';
import 'package:nirmalacdn/engine/creators/page_maker.dart';
import 'package:nirmalacdn/engine/parsers/icon_parser.dart';
import 'package:nirmalacdn/models/nvaigation_element.dart';

class RailNavigator extends StatefulWidget {
  List<NavigationElement> elements;
  RailNavigator({Key? key, required this.elements}) : super(key: key);

  @override
  State<RailNavigator> createState() => _RailNavigatorState();
}

class _RailNavigatorState extends State<RailNavigator> {
  int index = 0;
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        children: [
          Expanded(
              child: PageMaker(
            PageDetails: widget.elements[index].Page.Items,
          )),
          NavigationRail(
            extended: isExpanded,
            destinations: widget.elements
                .map((e) => NavigationRailDestination(
                    icon: Icon(IconParser(e.icon)), label: Text(e.Title)))
                .toList(),
            selectedIndex: index,
            onDestinationSelected: (i) => setState(() {
              index = i;
            }),
            trailing: FloatingActionButton(
              onPressed: () => setState(() {
                isExpanded = !isExpanded;
              }),
              child: Icon(isExpanded ? Icons.arrow_left : Icons.arrow_right),
            ),
          ),
        ],
      ),
    ));
  }
}
