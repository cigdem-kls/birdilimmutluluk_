import 'package:flutter/material.dart';

class PieChartSample7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartSample7State();
}

class PieChartSample7State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5,
      child: Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 28,
            ),
            Text('Toplam Kalori: 126 kcal.')
          ],
        ),
      ),
    );
  }
}
