import 'package:flutter/material.dart';
import 'package:nirmalacdn/engine/creators/widget_maker.dart';
import 'package:nirmalacdn/models/nvaigation_element.dart';

class PageMaker extends StatefulWidget {
  List<Component> PageDetails;
  PageMaker({Key? key, required this.PageDetails}) : super(key: key);

  @override
  State<PageMaker> createState() => _PageMakerState();
}

class _PageMakerState extends State<PageMaker> {
  @override
  Widget build(BuildContext context) {
    print(widget.PageDetails.last.Details);
    return ListView.builder(
        itemCount: widget.PageDetails.length,
        itemBuilder: ((context, index) =>
            WidgetMaker(ComponentDetails: widget.PageDetails[index])));
  }
}
