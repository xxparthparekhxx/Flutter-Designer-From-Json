import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  final String title;
  const Title({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return Container(
      width: ss.width,
      height: 45,
      padding: EdgeInsets.symmetric(
          horizontal: ss.width * 0.1, vertical: ss.height * 0.01),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
