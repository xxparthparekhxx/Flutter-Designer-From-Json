import 'package:flutter/material.dart';

class WidgetSelector extends StatefulWidget {
  WidgetSelector({Key? key}) : super(key: key);

  @override
  State<WidgetSelector> createState() => _WidgetSelectorState();
}

class _WidgetSelectorState extends State<WidgetSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Preview",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
