import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String data;
  const text({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ss.width * 0.1),
      child: Text(data),
    );
  }
}
