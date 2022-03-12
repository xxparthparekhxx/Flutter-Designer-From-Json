import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class QuickLinks extends StatelessWidget {
  final Map LinksWithDetails;

  const QuickLinks({Key? key, required this.LinksWithDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return Container(
      width: ss.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: ss.width * 0.1),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 300,
            childAspectRatio: 1.8),
        itemCount: LinksWithDetails['Urls'].length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      LinksWithDetails['Details'][index] as String,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              launch(LinksWithDetails['Urls'][index] as String);
                            },
                            child: Text("Click Here")),
                      ),
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
