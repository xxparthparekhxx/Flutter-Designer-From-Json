import 'package:flutter/material.dart';
import 'package:nirmalacdn/engine/engine.dart';
import 'package:nirmalacdn/models/design_model.dart';
import 'package:nirmalacdn/provider/design_provider.dart';
import 'package:provider/provider.dart';

class UiEngine extends StatelessWidget {
  const UiEngine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var designData = Provider.of<DesignProvider>(context).Design;
    if (designData != null) {
      return Engine(Design_data: designData);
    }
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
