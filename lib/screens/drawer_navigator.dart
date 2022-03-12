import 'package:flutter/material.dart';
import 'package:nirmalacdn/engine/creators/page_maker.dart';
import 'package:nirmalacdn/engine/parsers/icon_parser.dart';
import 'package:nirmalacdn/models/nvaigation_element.dart';
import 'package:nirmalacdn/widgets/new_page.dart';

class DrawerNavigator extends StatefulWidget {
  List<NavigationElement> elements;
  DrawerNavigator({Key? key, required this.elements}) : super(key: key);

  @override
  State<DrawerNavigator> createState() => _DrawerNavigatorState();
}

class _DrawerNavigatorState extends State<DrawerNavigator> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: Drawer(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: widget.elements.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: Icon(IconParser(widget.elements[index].icon)),
                        title: Text(widget.elements[index].Title),
                        onTap: () {
                          setState(() {
                            i = index;
                          });
                          Navigator.of(context).pop();
                        },
                      );
                    })),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text("Add New Page"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => AddPage())));
                },
              )
            ],
          ),
        ),
      )),
      body: PageMaker(PageDetails: widget.elements[i].Page.Items),
    );
  }
}
