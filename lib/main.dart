import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Rinjani Mountain",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Lombok, Indonesia",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          )),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41')
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget bottomSection = Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildBottomColumn(color, Icons.call, "Call"),
        _buildBottomColumn(color, Icons.near_me, "Route"),
        _buildBottomColumn(color, Icons.share, "Share")
      ],
    ));

    Widget textSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text(
            "The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok" 
            "A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall," 
            "Gunung Rinjani is the second highest mountain in Indonesia. The climb to the "
            "top may not be easy but it’s worth it, and is widely regarded as one of the best views in the country.",
            softWrap: true,
            ));

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Demo"),
          ),
          body: Column(
            children: [
              Image.asset('images/rinjani.jpg',
              width : 400,
              height: 240,
              fit: BoxFit.cover,
              ),
              titleSection, 
              bottomSection, 
              textSection],
          )),
    );
  }
}

Column _buildBottomColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      )
    ],
  );
}
