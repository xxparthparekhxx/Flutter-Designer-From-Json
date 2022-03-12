import 'package:flutter/material.dart';
import 'package:nirmalacdn/engine/ui_engine.dart';
import 'package:nirmalacdn/provider/design_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nirmala',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double? width;
  @override
  Widget build(BuildContext context) {
    width ??= MediaQuery.of(context).size.width;
    print(width);
    return ChangeNotifierProvider(
        create: (context) => DesignProvider(width!), child: UiEngine());
  }
}
