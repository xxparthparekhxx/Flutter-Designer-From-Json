import 'package:nirmalacdn/models/design_model.dart';

NavT navT_Parser(String nav) {
  switch (nav) {
    case 'Rail':
      return NavT.Rail;
    case 'Drawer':
      return NavT.Drawer;
    default:
      return NavT.Rail;
  }
}
