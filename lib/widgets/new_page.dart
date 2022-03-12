import 'package:flutter/material.dart';
import 'package:nirmalacdn/widgets/iconselector.dart';
import 'package:nirmalacdn/widgets/widget_selector.dart';

class AddPage extends StatefulWidget {
  AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  void SelectedIconSetter(IconData e) {
    setState(() {
      Selected_Icon = e;
    });
  }

  IconData? Selected_Icon = Icons.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Creator"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            alignment: Alignment.center,
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Page Title',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Select the Icon for the Page"),
                    ),
                    IconSelector(StateSetter: SelectedIconSetter),
                  ],
                )),
              ),
              WidgetSelector()
            ]),
          ),
        ],
      ),
    );
  }
}
