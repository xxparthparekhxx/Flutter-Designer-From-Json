import 'package:flutter/material.dart';
import 'package:nirmalacdn/models/nvaigation_element.dart';
import 'package:nirmalacdn/widgets/components/Text.dart';
import 'package:nirmalacdn/widgets/components/quick_links.dart';
import 'package:nirmalacdn/widgets/components/title.dart' as C;

class WidgetMaker extends StatefulWidget {
  Component ComponentDetails;

  WidgetMaker({Key? key, required this.ComponentDetails}) : super(key: key);

  @override
  State<WidgetMaker> createState() => _WidgetMakerState();
}

class _WidgetMakerState extends State<WidgetMaker> {
  @override
  Widget build(BuildContext context) {
    print(widget.ComponentDetails.ComponentType);
    try {
      switch (widget.ComponentDetails.ComponentType) {
        case CompType.Text:
          return text(data: widget.ComponentDetails.Details['title'] as String);
        case CompType.Title:
          return C.Title(
              title: widget.ComponentDetails.Details['title'] as String);
        case CompType.QuickLinks:
          return QuickLinks(
            LinksWithDetails: widget.ComponentDetails.Details as Map,
          );

        default:
          return Text("an Error Occured");
      }
    } catch (e) {
      print(e);
      return Text(e.toString());
    }
  }
}
