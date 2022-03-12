import 'package:flutter/material.dart';
import 'package:nirmalacdn/engine/parsers/icon_parser.dart';

class IconSelector extends StatefulWidget {
  Function? StateSetter;
  IconSelector({Key? key, required this.StateSetter}) : super(key: key);

  @override
  State<IconSelector> createState() => _IconSelectorState();
}

class _IconSelectorState extends State<IconSelector> {
  List<IconData> icons = [
    Icons.home,
    Icons.info,
    Icons.school,
    Icons.person,
    Icons.note_alt_sharp,
    Icons.collections_bookmark,
    Icons.stars_sharp,
    Icons.sports_basketball_sharp,
    Icons.work,
    Icons.people_alt_sharp,
    Icons.feedback
  ];
  IconData? selectedValue;
  @override
  void initState() {
    // TODO: implement initState
    selectedValue = icons.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        items: icons
            .map((e) => DropdownMenuItem(
                  child: Row(
                    children: [
                      Icon(e),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(IconToString(e)),
                      )
                    ],
                  ),
                  value: e,
                ))
            .toList(),
        value: selectedValue!,
        onChanged: (IconData? e) {
          setState(() {
            selectedValue = e!;
          });
          if (widget.StateSetter != null) {
            widget.StateSetter!(e);
          }
        });
  }
}
