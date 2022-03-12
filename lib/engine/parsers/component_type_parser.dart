import 'package:nirmalacdn/models/nvaigation_element.dart';

CompType CompTypeParser(String Type) {
  switch (Type) {
    case "Text":
      return CompType.Text;

    case "Title":
      return CompType.Title;

    case "QuickLinks":
      return CompType.QuickLinks;

    default:
      return CompType.Text;
  }
}
